package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DatabaseConnections;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
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
		response.setContentType("text/html");
		
		String nic = request.getParameter("nic");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		try {
			Connection connection = DatabaseConnections.getConnection();
			String sql = "INSERT INTO register  VALUES (?,?,?,?,?,?,?);";
			PreparedStatement pst = connection.prepareStatement(sql);
			
			pst.setString(1, nic);
			pst.setString(2, username);
			pst.setString(3, email);
			pst.setString(4, address);
			pst.setString(5, city);
			pst.setString(6, phone);
			pst.setString(7, password);
			pst.executeUpdate();

        
			if (pst != null) {
				pst.close();
			}
			if (connection != null) {
				connection.close();
        }} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/login.jsp");
		dispatch.forward(request, response);
	}

}
