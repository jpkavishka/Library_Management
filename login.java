package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        out.print(email);
        out.print(pwd);
        HttpSession session=request.getSession();
        session.setAttribute("email", email);
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/devrev","root","123");
             PreparedStatement ps = con.prepareStatement( "select * from regis where email=? and password=?");
             ps.setString(1,email);
             ps.setString(2,pwd);
             ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
                 response.sendRedirect("index.html");
            }
            else{
                response.sendRedirect("login.jsp");
            }
        
        }
        catch(Exception e)
        {
             out.println(e);
        }
    }
}
