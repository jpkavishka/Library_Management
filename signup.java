package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class signup extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("uname");
        String emailid = request.getParameter("email");
        String department=request.getParameter("dep");
        String mobile = request.getParameter("mobileno");
        String pass = request.getParameter("password");
        String cpass=request.getParameter("cpassword");
        HttpSession session=request.getSession(); 
        try
        {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/devrev","root","123");
                PreparedStatement p = conn.prepareStatement("insert into regis values(?,?,?,?,?,?)");
                p.setString(1,username);
                p.setString(2,emailid);
                p.setString(3,department);
                p.setString(4,mobile);
                p.setString(5,pass);
                p.setString(6,cpass);
                p.execute();
                System.out.print("Successfully");
                response.sendRedirect("login.jsp");
        }
        catch(Exception e)
        {
                System.out.println(e);
        }
    }


}
