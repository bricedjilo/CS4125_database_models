package dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DaoAccess {
	private DataSource dataSource;

	public DaoAccess() {
	}

	public void init() {
		try {
			InitialContext initContext = new InitialContext();
			Context env = (Context)initContext.lookup("java:comp/env");
			dataSource = (DataSource)env.lookup("jdbc/orcl");
		} catch (NamingException e) {
			//throw new ServletException();
		}
	}
	
}
