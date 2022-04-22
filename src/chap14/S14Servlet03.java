package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet03
 */
@WebServlet("/S14Servlet03")
public class S14Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName,Country,City,Address FROM Customers WHERE CustomerID = 1";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		try (
			// 1. 연결얻기
			Connection con = ds.getConnection();
			// 2. statment 생성
			Statement stmt = con.createStatement();
			// 3. 쿼리 실행
			ResultSet rs = stmt.executeQuery(sql);
				) {
			// 4. 결과 정제
			if (rs.next()) {
				String name = rs.getString(1);
				String country = rs.getString(2);
				String city = rs.getString(3);
				String address = rs.getString(4);
				
				request.setAttribute("name", name);
				request.setAttribute("country", country);
				request.setAttribute("city", city);
				request.setAttribute("address", address);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// 5. 자원닫고 (try-with-resource 문법으로 해결)
		String location = "/WEB-INF/view/chap14/ex02.jsp";
		request.getRequestDispatcher(location).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
