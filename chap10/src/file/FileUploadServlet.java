package file;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet(urlPatterns = {"/fileUpload"})
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 파일을 저장할 서버의 위치를 지정한다. 실제 서버 시스템상 경로에 저장된다
			// System.out.println(request.getRealPath("/uploadedFile")); // 미사용
			String uploadPath = "D:\\jsp\\chap10\\WebContent\\uploadedFile";
			
			System.out.println("ap "+uploadPath);
			int size = 100 * 1024 * 1024; // 100mb
			
			// [form enctype="multipart/form-data"] 속성 받기
			MultipartRequest multi = new MultipartRequest(
					request,
					uploadPath,
					size,
					"UTF-8",
					new DefaultFileRenamePolicy()
			);
			
			// 일반 파라미터(text)
			String name = multi.getParameter("name");
			
			// 파일 파라미터(file) 받기
			Enumeration files = multi.getFileNames();
			
			String file1 = (String)files.nextElement();	// 첫번째 파일 입력상자 이름
			String fileName1 = multi.getFilesystemName(file1); // 서버에 저장된 파일 이름
			String orgFileName1 = multi.getOriginalFileName(file1); // 클라이언트에서 보낸 파일 이름
			System.out.println(file1 + ", "+ fileName1 +", " + orgFileName1);
			String file2 = (String)files.nextElement();	// 첫번째 파일 입력상자 이름
			String fileName2 = multi.getFilesystemName(file2); // 서버에 저장된 파일 이름
			String orgFileName2 = multi.getOriginalFileName(file2); // 클라이언트에서 보낸 파일 이름
			System.out.println(file2 + ", "+ fileName2 +", " + orgFileName2);
			
			response.sendRedirect("/chap10/fileUploadTest.jsp");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
