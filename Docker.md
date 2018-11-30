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
<br />

> Docker machine <br />

Docker machine은 docker engine을 host에서 설치할수 있게하는 도구이다. 이 도구를 이요하면 집이나 회사, 멀리떨어진 곳에서 docker실행이 가능하다.
<br />
<br />

### Docker의 설치과정 <br />

- Windows 10 <br />
`Docker for window` 설치후 `작업관리자` > `성능` > `가상화` 에서 설정을 맞춰준다
<br />

- Windows 10 보나 낮은사양 <br />
Oracle Vitual Box-Linux Virtual Machine 을 기반으로 한 `Docker toolbox`가 필요하다. `Virtualization tool`가 있는지도 확인해본후 설치한다.
<br />

- Mac <br />
1. `Docker.dmg`를 더블클릭하고 나온 고래모양을 `Applications`폴더에 drag한다
<br />
2. `Docker.app`을 더블클릭하면 실행된다
<br />
<br />


### Docker가 정상적으로 설치 되었는지 확인하는 방법 <br />

`Docker Quick Starter`를 클릭하여 





