### 내장 객체와 액션 태그

JSP 페이지는 웹 컨테이너에 의해 서블릿 클래스로 변환  
서블릿 클래스는 사용자의 요청을 수행  
  
서블릿 클래스가 객체로 생성되고, 사용자의 요청에 맞는  
응답 페이지를 생성하기 위해 몇 가지 객체가 필수적으로 사용됨  

-> 내장 객체
  
javax.servlet 패키지 아래의 8개 객체 : 서블릿 구현  
java.lang 패키지 아래의 1개 객체 : 예외 처리


<br>

---

#### 내장 객체
내장 객체 변수명 : 클래스/인터페이스 타입  
JSP 내에서 선언 없이 내장 객체 변수명으로 사용 가능  
- request
    - javax.servlet.SevletRequest(javax.servlet.http.HttpServletRequest)
    - 클라이언트의 HTTP 요청 정보를 저장 
    - requestTest1_Form.jsp, 
- response
    - javax.servlet.ServletResponse(javax.servlet.http.HttpServletResponse)
    - HTTP 요청에 대한 응답 정보 저장 
- session
    - javax.servlet.http.HttpSession
    - 클라이언트의 세션 정보 저장 
- pageContext
    - javax.servlet.jsp.PageContext
    - 페이지 실행에 필요한 컨텍스트 정보 저장 
- out
    - javax.servlet.jsp.jspWriter
    - 응답 페이지 전송을 위한 출력 스트림 
- application
    - javax.servlet.ServletContext
    - 동일한 어플리케이션 컨텍스트 정보 
- config
    - javax.servlet.ServletConfig
    - 페이지의 서블릿 설정 정보
- page
    - java.lang.Object(javax.servlet.jsp.HttpJspPage)
    - 해당 페이지 서블릿 객체
- exception
    - java.lang.Throwable
    - 예외 처리 객체