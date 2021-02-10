package file;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FileDownServlet
 */
@WebServlet(urlPatterns = { "/fileDown" })
public class FileDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String fileName = request.getParameter("fileName");

		// 서버상에 파일이 저장되어있는 실제 물리적 경로
		String filePath = "D:\\jsp\\chap10\\WebContent\\uploadedFile\\" + fileName;

		// 파일을 읽을 FileInputStream 생성
		byte[] b = new byte[4096];
		FileInputStream fi = new FileInputStream(filePath);

		// 다운로드할 파일의 마임타입을 얻어온다
		// mime type = media type = content type
		String sMimeType = getServletContext().getMimeType(filePath);
		System.out.println("sMimeType : " + sMimeType);
		// 제대로 구하지 못할 경우 기본 마임타입 지정
		if (sMimeType == null)
			sMimeType = "application/octet-stream";
		
		// 응답할 데이터의 마임 타입을 다운로드할 파일의 마임 타임으로 지정
		response.setContentType(sMimeType);
		
		// 브라우저가 Internet Explorer 타입인지 확인한다. -> true
		String agent = request.getHeader("User-Agent");
		System.out.println("agent : " + agent);
		boolean isBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);

		if (isBrowser) {
			// 익스플로러인경우 한글 파일명이 깨지지 않도록 처리하는 부분
			fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
			System.out.println("1 : " + fileName);
		} else {
			// 익스플로러가 아니더라도 한글 파일명이 깨지지 않도록 처리하는 부분
			fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
			System.out.println("2 : " + fileName);
		}

		// 다운로드 박스가 실행되게 처리하는 부분
		// attachment 설정하면 모든 파일에 대해서 다운로드 박스가 실행됨.
		response.setHeader("Content-Disposition", "attachment;fileName=" + fileName);
		ServletOutputStream out2 = response.getOutputStream();
		int numRead;
		while ((numRead = fi.read(b, 0, b.length)) != -1) {
			out2.write(b, 0, numRead);
		}
		out2.flush();
		out2.close();
		fi.close();
	}

}
