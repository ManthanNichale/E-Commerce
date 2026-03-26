package LoginServletDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String cpass = request.getParameter("cpass");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Check password match
        if (!pass.equals(cpass)) {
            out.println("<h3>Password does not match!</h3>");
            return;
        }

        try {
            Class.forName("org.postgresql.Driver");

            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/techouts","postgres",   "manthan" );

            // Insert query
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(username, password) VALUES (?, ?)"  );

           ps.setString(1, uname);
            ps.setString(2, pass);

            int i = ps.executeUpdate();

            if (i > 0) {
                out.println("<h3>Registration Successful!</h3>");
                out.println("<a href='Login.jsp'>Go to Login</a>");
            } else {
                out.println("<h3>Registration Failed!</h3>");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}