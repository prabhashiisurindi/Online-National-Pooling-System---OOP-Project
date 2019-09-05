package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Votes;
import db.DatabaseConnections;

/**
 * Servlet implementation class voteServlet
 */
@WebServlet("/voteServlet")
public class voteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public voteServlet() {
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
		Votes vote = new Votes();
		vote.setParty(request.getParameter("party"));
		
		if (vote.getParty() != null) {
			Connection connection;
			try {
				connection = DatabaseConnections.getConnection();
				Statement st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
				ResultSet result = st.executeQuery(String.format("select * from vote where party = '%s'", vote.getParty()));
				if (result.next()) {
					vote.setVoteCount(result.getInt(2) + 1);
					result.deleteRow();
				} else {
					vote.setVoteCount(1);
				}
				result.moveToInsertRow();
				result.updateString(1, vote.getParty());
				result.updateInt(2, vote.getVoteCount());
				result.insertRow();
				result.moveToCurrentRow();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/success.jsp");
			dispatch.forward(request, response);
			
			
		}
	}
		
}