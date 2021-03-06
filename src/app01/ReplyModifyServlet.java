package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dao.ReplyDao;
import app01.dto.BoardDto;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class ReplyModifyServlet
 */
@WebServlet("/reply/modify")
public class ReplyModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private DataSource ds; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	this.ds = (DataSource) application.getAttribute("dbpool");
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request para
				String boardIdStr = request.getParameter("boardId");
				String replyContent = request.getParameter("replyContent");
				String content= request.getParameter("content");
				int boardId = Integer.parseInt(boardIdStr);

				ReplyDto board = new ReplyDto();
				board.setBoardId(boardId);
				board.setContent(replyContent);
				board.setContent(content);
				
				// 비지니스 로직 처리
				ReplyDao dao = new ReplyDao();
				boolean success = false;
				try (Connection con = ds.getConnection()) {
					success = dao.modify(con, board);
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				// 결과 attribute 넣고
				
				// forward / redirect
				String location = request.getContextPath() + "/board/get?id=" + boardId;
				if (success) {
					location += "&success=true";
				} else {
					location += "&success=false";
				}
				
				response.sendRedirect(location);
	// TODO Auto-generated method stub
		doGet(request, response);
	}

}
