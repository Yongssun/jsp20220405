package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.sql.Result;
import javax.sql.DataSource;

import org.mariadb.jdbc.*;





/**
 * Servlet implementation class S14Servlet01
 */
@WebServlet("/S14Servlet01")
public class S14Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * String host= "본인 ip";
		 *  String schema = "db테이블(w3schools)";
		 *   String id ="db id(root)"; 
		 *   String pw="암호";
		 * 
		 * Connection con = null;
		 */
		//JDBCListener 대체
		//database에서 record 가져오기
		ServletContext application = getServletContext();
		// 1. 연결설정
		List<String> cities = new ArrayList<>();
				DataSource ds = (DataSource) application.getAttribute("dbpool");

				String sql = "SELECT city FROM Customers";
				try (
						Connection con = ds.getConnection();
						// 2. statement 객체 생성
						Statement stmt = con.createStatement();
						// 3. 쿼리 실행
						ResultSet rs = stmt.executeQuery(sql);) {

					// 4. 실행결과 정제
					while (rs.next()) {
						String city = rs.getString(1);
						/* System.out.println(city); */
						cities.add(city);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

				// 5. 자원닫기
				//		rs.close();
				//		stmt.close();
				//		con.close();

				/*
				List<String> cities = new ArrayList<>();
				cities.add("Berlin");
				cities.add("London");
				cities.add("Madrid");
				*/

				// request에 records 넣기
//				request.setAttribute("cities", cities);
				request.setAttribute("cities", cities);
				// jsp로 forward
				String location = "/WEB-INF/view/chap14/ex01.jsp";
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
