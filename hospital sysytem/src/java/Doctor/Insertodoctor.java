/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Doctor;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
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
import user.user;

/**
 *
 * @author Kavindu Yasintha
 */
public class Insertodoctor extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Insertodoctor</title>");            
            out.println("</head>");
            out.println("<body>");
         
            
            
            
            
            
            
String name = request.getParameter("doct");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String fullname = request.getParameter("fullname");
String dob = request.getParameter("dob");
String city = request.getParameter("city");
String school = request.getParameter("school");
String uni = request.getParameter("uni");
String dp = request.getParameter("dp"); // degre
String type = request.getParameter("type");
String unit = request.getParameter("unit");

String myloc=request.getParameter("imageUpload");


Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rs=null;
String url="jdbc:mysql://localhost:3306/HospitalManagment";
FileInputStream fis=null;

out.print("First Name :"+name+"myloc="+myloc);
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection(url, "root", "password");
File image= new File(myloc);

pstmt = conn.prepareStatement("insert into doctors(dactorname,fullname,email,city,phone,dob,school,university,degre) " + "values(?,?,?,?,?,?,?,?,?)");
pstmt.setString(1, name);
pstmt.setString(2, fullname);
pstmt.setString(3, email);
pstmt.setString(4, city);
pstmt.setString(5, phone);
pstmt.setString(6, dob);
pstmt.setString(7, school);
pstmt.setString(8, uni);
pstmt.setString(9, dp);


int count = pstmt.executeUpdate();
if(count>0)
{
out.println("insert successfully");
}
else
{
out.println("not successfully");
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
finally{
try{
if(rs!=null){
rs.close();
rs= null;
}
if(pstmt !=null)
{
pstmt.close();
pstmt=null;
}
if(conn!=null)
{
conn.close();
conn=null;
}
}
catch(Exception e)
{
e.printStackTrace();
}
}


            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
