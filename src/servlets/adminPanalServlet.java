package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DatabaseConnections;

/**
 * Servlet implementation class adminPanalServlet
 */
@WebServlet("/adminPanalServlet")
public class adminPanalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminPanalServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
doGet(request, response);
		
		response.setContentType("text.html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			Connection con = DatabaseConnections.getConnection();
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select username, password from register where username='"+username+"' and password='"+password+"'");
			
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				if(rs.getString("password").equals("admin")&&rs.getString("username").equals("Admin")) 
				{ 
					RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/adminPanal.jsp");
					dispatch.forward(request, response);
				} 
				else{
				System.out.println("Invalid password or username.");
				}
				
				
			
			
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (SQLException e) {
			System.out.println(e);
		}
		}

}
