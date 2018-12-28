-- 1. JOBS to Job table

import pymysql
import cx_Oracle

def get_oracle_conn():
    return cx_Oracle.connect("hr", "hrpw", "localhost:1521/xe")

def get_mysql_conn(_db):
    return pymysql.connect(
    host='localhost',
    user='dooo',
    password='1',
    port=3307,
    db=_db,
    charset='utf8')
    
connection = mu.get_oracle_conn()
myconn = mu.get_mysql_conn('doodb')

with connection:
    
    cursor = connection.cursor()
    sql = '''select * from JOBS'''
    cursor.execute(sql)
    rows = cursor.fetchall()

for row in rows:
    print(row)

with myconn:
    cur =  myconn.cursor()
    cur.execute("call sp_drop_fk_refs('Job')")
    
    cur.execute("drop table if exists Job")

    sql_create = '''
        create table Job (
            id varchar(45) not null,
            title varchar(45) not null,
            min_salary int default 0,
            max_salary int default 0,
            primary key(id)
        )
    '''

    cur.execute(sql_create)

    sql_insert = "insert into Job(id, title, min_salary, max_salary) values(%s, %s, %s, %s)"
    
    cur.executemany(sql_insert, rows)
    print("Affected Row Count is", cur.rowcount)


-- 2. DEPARTMENTS to Department

connection = mu.get_oracle_conn()
myconn = mu.get_mysql_conn('doodb')

with connection:
    
    cursor = connection.cursor()
    sql = '''select DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID from DEPARTMENTS'''
    cursor.execute(sql)
    rows = cursor.fetchall()

for row in rows:
    print(row)

with myconn:
    cur =  myconn.cursor()
    cur.execute("call sp_drop_fk_refs('Department')")
    
    cur.execute("drop table if exists Department")

    sql_create = '''
        create table Department (
            id int default 0 not null,
            name varchar(45) not null,
            manager_id int default 0,
            primary key(id)
        )
    '''

    cur.execute(sql_create)

    sql_insert = "insert into Department(id, name, manager_id) values(%s, %s, %s)"
    
    cur.executemany(sql_insert, rows)
    print("Affected Row Count is", cur.rowcount)
