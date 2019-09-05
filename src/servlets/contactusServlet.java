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
 * Servlet implementation class contactusServlet
 */
@WebServlet("/contactusServlet")
public class contactusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactusServlet() {
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
		
		
		if(request.getParameter("type").matches("insert") )
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
		try {
			Connection connection = DatabaseConnections.getConnection();
			String sql = "INSERT INTO contactus  VALUES (?,?,?,?,?);";
			PreparedStatement pst = connection.prepareStatement(sql);
			
			pst.setString(1, nic);
			pst.setString(2, name);
			pst.setString(3, email);
			pst.setString(4, subject);
			pst.setString(5, message);
			pst.executeUpdate();

        
			if (pst != null) {
				pst.close();
			}
			if (connection != null) {
				connection.close();
        }
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/updateDelete.jsp");
			dispatch.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}else if(request.getParameter("type").matches("update") ) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		try {
			Connection connection = DatabaseConnections.getConnection();
			String sql = "UPDATE online_national_polling_system.contactus SET name= ?, email = ?, subject= ?, message= ? WHERE nic= ? ";
			PreparedStatement pst = connection.prepareStatement(sql);
		
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, subject);
			pst.setString(4, message);
			pst.setString(5, nic);
			pst.executeUpdate();

        
			if (pst != null) {
				pst.close();
			}
			if (connection != null) {
				connection.close();		
        }
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Exception : " + e);
		}
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/updateDelete.jsp");
		dispatch.forward(request, response);
	}else {
		try {
			Connection connection = DatabaseConnections.getConnection();
			String sql = "DELETE FROM online_national_polling_system.contactus  WHERE nic= ? ";
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, nic);
			pst.execute();
			

        
			if (pst != null) {
				pst.close();
			}
			if (connection != null) {
				connection.close();		
        }
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Exception : " + e);
		}
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/delete1.jsp");
		dispatch.forward(request, response);
	}
	
	}

}
