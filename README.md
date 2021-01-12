# JSPnSERVLET
## 웹개발
---
<br>

### Dir info.
- Servers
    - 서버 환경 폴더
- jspTest
    - 처음 환경 설정 및 실행 테스트
- chap03
    - Servlet 정리

---
<br>

## 초기 셋팅
### Used
- Eclipse EE
- apache tomcat 9.0
    - Web Container
    - JSP와 서블릿을 동작시킬 웹 컨테이너

<br>

### 초기 셋팅
1. Eclipse EE, apache tomcat 설치  
![Screenshot](/imgs/1.PNG)
1. server 등록(1)  
![Screenshot](/imgs/2.PNG)
1. server 등록(2)  
[windows]->[show View]->[Server]->[No servers are available. Click this ...]    
1. server 포트 설정(3)  
![Scrrenshot](/imgs/3.PNG)  
*defualt '-' and '8080'*  
*-를 아무 값으로 바꾸고, 8080도 아무 값으로 바꿈(충돌 방지)*

<br>

1. 프로젝트 생성  
[new]->[project]->[Web]->[Dynamic Web Project]

1. 소스코드 생성
    - jsp 파일 생성 위치
        - WEB-INF 디렉토리
    - servlet 파일 생성 위치
        - Java Resources/src 디렉토리

1. 실행  
    - [우클릭]->[Run as]->[1 Run on Server]
    - 그냥 버튼 누르기



<br>

---

### MVC와 비교
- View : JSP
- Model : Java beans
- Controller : Servlet
    - 웹 서버 상에서 실행되는 자바의 클래스 파일

<br>

---

### Refer
- JSP2.3 & Servlet3.1 (오정원)