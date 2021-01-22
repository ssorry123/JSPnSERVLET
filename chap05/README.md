## 내장 객체와 액션 태그

<br>

---

### 내장 객체
JSP 페이지는 웹 컨테이너에 의해 서블릿 클래스로 변환  
서블릿 클래스는 사용자의 요청을 수행  
  
서블릿 클래스가 객체로 생성되고, 사용자의 요청에 맞는  
응답 페이지를 생성하기 위해 몇 가지 객체가 필수적으로 사용됨  

-> 내장 객체
  
javax.servlet 패키지 아래의 8개 객체 : 서블릿 구현  
java.lang 패키지 아래의 1개 객체 : 예외 처리

<br>

---

내장 객체 변수명 : 클래스/인터페이스 타입  
JSP 내에서 선언 없이 내장 객체 변수명으로 사용 가능  
- request
    - javax.servlet.SevletRequest(javax.servlet.http.HttpServletRequest)
    - 클라이언트의 HTTP 요청 정보를 저장 
        - requestTest1_Form.jsp, requestTest1.jsp
        - requestTest2.jsp
        - requestTest3.jsp

- response
    - javax.servlet.ServletResponse(javax.servlet.http.HttpServletResponse)
    - HTTP 요청에 대한 응답 정보 저장 
        - responseTest1.jsp, responseTest2.jsp

- session
    - javax.servlet.http.HttpSession
    - 클라이언트의 세션 정보 저장
    - 자세한 내용은 추후에
        - sessionTest1.jsp

- pageContext
    - javax.servlet.jsp.PageContext
    - 페이지 실행에 필요한 컨텍스트 정보 저장
        - pageContextTest1.jsp, 2.jsp, 3.jsp  

- out
    - javax.servlet.jsp.jspWriter
    - 응답 페이지 전송을 위한 출력 스트림 
    - out객체 사용 없이 표현식으로도 충분히 출력할 수 있다.
        - outTest3.jsp

- application
    - javax.servlet.ServletContext
    - 동일한 어플리케이션 컨텍스트 정보
    - 각 웹 애플리케이션당 오직 하나만의 객체만이 생성
        - applicaionTest1.jsp

- config
    - javax.servlet.ServletConfig
    - 페이지의 서블릿 설정 정보
    - 서블릿당 하나의 객체
    - 초기 설정 정보들
        - configTest1.jsp, WEB-INF/web.xml

- page
    - java.lang.Object(javax.servlet.jsp.HttpJspPage)
    - 해당 페이지 서블릿 객체

- exception
    - java.lang.Throwable
    - 예외 처리 객체


<br>

---

### 영역 객체(Scope)와 속성(Attribute)
속성 : 공유되는 데이터  
영역 : 속성을 공유할 수 있는 유효 범위

- session 영역
    - 세션이 유지되는 동안 유효
    - (브라우저를 종료하면 세션 영역은 소멸)
- request 영역
    - 클라이언트의 요청이 처리되는 동안 유효
- application 영역
    - 웹 에플리케이션이 실행되고 있는 동안 유효
    - (브라우저를 닫아도 살아있음)
    - 가장 큰 영역

<br>

- page 영역
    - 오직 하나의 페이지 내에서만 유효성을 갖는 영역
    - 해당 페이지가 클라이언트에 서비스를 제공하는 동안에만 유효
    - *page내장 객체가 아닌 pageContext내장 객체를 통해 접근 하는 영역*
     
<br>

- session영역과 application영역 테스트
    - attributeTest1_From, 1, 2, 3.jsp
- page영역과 request영역 비교
    - attributeTest4, 5Result.jsp


<br>

---

### 액션태그
jsp 페이지에서 자바 코드 등의 스크립트 언어를 사용하지 않고  
html 형태로 다른 페이지의 서블릿이나 자바빈의 객체에 접근할 수 있도록  
태그를 이용해 구현된 기능  

*jsp 페이지의 내부적인 프로그램 로직을 사용자로부터 감출 수 있음*

WebContent/ActionTag
- 페이지 흐름 제어 액션
    - forward/include
- 자바빈 사용 액션
    - useBean
- 애플릿 사용 액션
    - plugin
    - 사용 빈도가 줄어듬
    
<br>

---

#### forward 액션
pageContext 내장 객채의 forward 메소드와 같음  
원래 페이지의 request, response 객체 유지
제어권을 포워딩 되는 페이지로 완전히 넘김  

- 사용법
```jsp
<jsp:forward page = "somePage"/>
```
```jsp
<jsp:forward page = "somePage"></jsp:forward>
```
```jsp
동적
<jsp:forward page = '<%=nextPage %>' />
``` 
```jsp
전달할 파라미터가 있을 경우
<jsp:forward page="somepage">
    <jsp:param name="paramName1" value="parmValue1" />
    <jsp:param name="paramName2" value="parmValue2" />
</jsp:forward>
or
<jsp:forward page="forward.jsp?id=idvalue&pass=abc" />
```


<br>

---

#### include 액션
임시로 제어권을 include 되는 페이지로 넘김  
그 페이지의 처리가 끝나면 처리 결과를 원래 페이지로 돌아옴  
제어권도 원래 페이지로 돌아옴  
여러 페이지를 동적으로 하나의 페이지로 묶을 수 있음.

- 사용법
```jsp
<jsp:include page="포함될페이지" flush="false"/>
<jsp:include page="포함될페이지" flush="false"></jsp:include>
```
```jsp
<jsp:include page="이동할페이지">
    <jsp:param name="paramName1" value="paramValue1"/>
    <jsp:param name="paramName2" value="paramValue2"/>
</jsp:include>
or
<jsp:include page="포함될페이지?paramName1=paramValue1&paramName2=paramValue2"/>
```

<br>

---
#### XMLElement 생성 액션 태그
- `<jsp:element>` 태그
    - xml 엘리먼트 정의
    - 엘리먼트 이름 정의
- `<jsp:attribute>` 태그
    - 엘리먼트의 속성 정의
- `<jsp:body>` 태그
    - 엘리먼트의 내용 정의