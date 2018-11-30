## **Docker의 개념과 구성요소 설명과 설치과정**

### Docker <br />

Docker는 computing environment가 여러가 필요할때 여러대의 컴퓨터대신 하나의 OS를 나누어 사용할수 있게 함으로써 시간적, 공간적, 경제적 활용성이
뛰어난 프로그램이다. Docker의 구성요소는 대표적으로 image, container 그리고 Docker machine 등이 있다.
<br />

> Docker Image and container <br />

Docker container는 image를 실행하게되면 생성된다. 이때 이 이미지는 컴퓨터만 해석 가능한 `Byte`코드로 저장되어 있으므로 OS기반이나 infrastructure와는 상관없이 빠르게 실행이 가능하며 container의 손실시 다시 image만 docker engine에 실행시키게 되면 얼마든지 작업중인 container를 복구가 가능하다는 큰 장점이 있다. 
<br />

Container는 software를 local computer내에서 고립된 상태로 만들어 주어 개발할때 staging상태에서 독립된 상태에서 개발할수 있도록 해준다. 
<br />

> Docker machine <br />

Docker machine은 docker engine을 host에서 설치할수 있게하는 도구이다. 이 도구를 이요하면 집이나 회사, 멀리떨어진 곳에서 docker실행이 가능하다.
<br />



