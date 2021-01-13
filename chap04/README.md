### JSP

<br>

---

#### 주석
```
<%-- JSP 주석 %-->
```
```
<%
/* 자바스타일 주석 */
// 자바스타일 주석
%>
```

<br>

---
#### 지시어
```<%@ ... %>```
- page 지시어
    - ```<%@ page 속성1="값1 속성2="값2" ... %>```
        - ```<%@ page language="java %>```
        - ```<%@ page extends="javax.servlet.jsp.HttpJspBase" %> ```
            - jsp 파일은 jsp 컨테이너에서 실행되기 위해 파싱됨
            - 파싱 과정을 거쳐 서블릿 클래스로 변환됨
            - 서블릿 클래스로 변환되는 과정에서 상속할 부모 클래스 지정
        - ```<%@ page import="java.io.*, java.util.ArrayList" %>```
            - importTest.jsp
        - ```<%@ page session="true" %>```
            - 추후
        - ```<%@ page buffer="16kb" %>```
            - 응답을 클라이언트에 전송할 때 사용되는 버퍼 크기 지정
            - default = "8kb"
        - ```<%@ page autoFlash="true" %>```
            - true : 버퍼가 채워진 경우 : 클라이언트에게 전송
            - false : 버퍼가 채워진 경우 : 예외 발생
            - *buffer가 "none"인 경우 false 불가*
        - ```<%@ page isThreadSafe="true" %>```
            - JSP 는 다중 스레드 기반
            - 다중 스레드에 의한 불일치를 막기 위한 속성
        - ```<%@ page info="설명" %>```
        - ```<%@ page errorPage="error/error.jsp" %>```
            - 에러 페이지에서 예외를 처리할 수 있도록 함
            - *buffer가 "none"인 경우 불가*
            - *autoFlash가 "true"여도 응답 전송 이후 불가*
        - ```<%@ page contentType="text/html;charset=euc-kr" %>```
            - JSP 페이지가 전송할 응답의 형태를 지정
                - text/html, image/gif, video/avi 등
        - ```<%@ page pageEncoding="euc-kr" %>```
            - default : ISO-8859-1
            - *보통 contentType 속성을 지정할 때 한번에 지정하여 사용*
- include 지시어
    - ```<%@ include file="header.jsp" %>```
        - 특정 JSP 파일, HTML 파일을 해당 JSP 페이지에 삽입
        - includeTest.jsp, header.jsp, footer.jsp
- taglib 지시어
    - ```<%@ taglib uri="http://xxx.xxx.xxx" prefix="samplePrefix" %>```
    - 태그 라이브러리를 JSP 사용할 때 접두사 지정
    - 추후

<br>

---

#### JSP 스크립트 요소
JSP 내에 자바의 코드를 삽입하기 위해 사용  
선언문(Declaration), 스트립틀릿(Scriptlet), 표현식(Expression) 3가지

- 선언문(Declaration)
    - ```<%! ... %>```
    - 어느 위치에서도 해당 변수 참조 가능(멤버 취급)
    - declarationTest.jsp
- 스크립틀릿(Scriptlet)
    - ```<% ... %>```
    - 지역변수 취급
    - 서블릿 처럼 PrintWriter등의 스트림 사용하지 않음
    - 비즈니스 로직은 스트립틀릿 태그를 사용하여 구분
    - scriptletTest.jsp
- 표현식(Expresssion)
    - ```<%= ... %>```
    - 출력 객체의 print() 메소드를 통해 문자열로 변환되어 출력
    - *따라서 ';' 사용*  X
    - expressionTest.jsp