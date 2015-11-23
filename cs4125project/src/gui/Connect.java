package gui;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Connect
 */
public class Connect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			out.println("JDBC driver was found");
		} catch (ClassNotFoundException e) {
			out.println("Cannot load oracle-jdbc driver\n");
			e.printStackTrace();
		}
		
		Connection conn = null;
		try {
			out.println("Connected to database.");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@dbsvcs.cs.uno.edu:1521:orcl",
					"dbrice","tWK9XNrn"
			);
			
		} catch (SQLException e) {
			out.println("Can't connect to database.\n");

		}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Class.forName("com.oracle.jdbc.Driver");
	}

}
