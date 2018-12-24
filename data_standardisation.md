Data standardization is a key part of ensuring data quality. Lacking standardization results in bad data,
which has numerous negative effects, from sending bad emails, to mailing to bad addresses, to losing customers altogether.

As part of the Data Preparation field, Data Standardization deals with the transformation of datasets after the data is pulled from source systems and before it's loaded into target systems. Because of that, Data Standardization can also be thought of as the transformation rules engine in Data Exchange operations.

Data Standardization enables the data consumer to analyze and use data in a consistent manner. Typically, when data is created and stored in the source system, it's structured in a particular way that is often unknown to the data consumer. Moreover, datasets that might be semantically related may be stored and represented differently, thereby making it difficult for a data consumer to aggregate or compare the datasets.

(CRM = Customer-relationship management) 

## Step 1: Understanding and Cleaning Your Data 
You want to make sure that the data is correct, clean, complete, formatted and verified before it gets committed into your CRM system, and before you take action on that data. Doing so ensures the accuracy and integrity of the information; and it’s going to prevent that dirty data from entering your database. It helps ensure that your operational efficiency is at its highest level by cleaning that data either prior to migrations and campaigns or, at that initial point of entry within your CRM system. 

## Step 2: Knowing the Data Entry Points
If you’re capturing data from a web form, for example, you want to know what data you’re collecting and how you’re collecting it. A form can have open text fields, multiple choice options, and pull responses into a spreadsheet or CRM system. Understanding where and how this data is collected helps determine whether normalisation is needed.

## Step 3: Choosing Data Standards
What type of data should be normalised? Data categories that describe the buyer persona or impact business processes are the best candidates for normalisation. Translating unrefined data into a standardised list gives you the ability to take actions that otherwise would be difficult or impossible to do properly. For example, data such as job title, industry, state, country, or platforms/technologies impact lead scoring and nurture messaging, so accuracy and consistency are vital. Some common choices for normalisation are job titles, locations, and addresses.

## Step 4: Defining the Normalisation Matrix
A normalisation matrix maps dirty data to your new standard data values. Start with a value that’s important to your organization, such as job title. Identify job levels for the different job title values, and then refine the title-to-level interpretations.

Once your normalization matrix is created, run it against your data. Once you’ve got the matrix, you need a data normalization program in the marketing automation system. Essentially, this is the brain that compares the entry data to the final result.


## Data Standardization Use Cases
There are two main use case categories in Data Standardisation: Source-to-Target Mapping, and Complex Reconciliation. We typically divide the former into two sub-categories thereby arriving at three use cases:

- Simple mapping from external sources: This use case handles on-boarding data from systems that are external to the organization, and mapping its keys and values to an output schema.
- Simple mapping from internal sources: This use case involves handling internal datasets that are based on inconsistent definitions and transforming them into a single trustworthy data set for the entire organization.
- Complex reconciliation: This use case involves the creation of complex calculated metrics that provide their own semantics based on defined business logic.
