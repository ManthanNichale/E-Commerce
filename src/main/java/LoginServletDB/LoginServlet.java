package LoginServletDB;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
	
	String uname=request.getParameter("username");
	String pass =request.getParameter("password");

	try {
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/techouts","postgres","manthan");

		
		System.out.println("contedted");
		PreparedStatement statement = con.prepareStatement("select * from users where username = ? and password = ?");
		statement.setString(1, uname);
		statement.setString(2, pass);
		
		ResultSet rs = statement.executeQuery();

		
		if(rs.next()) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("Welcome.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
	
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
 catch (SQLException e) {
		// TODO Auto-generated catch block
	e.printStackTrace();
	}
	

	}	
	
}
