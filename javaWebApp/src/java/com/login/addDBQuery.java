/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Paul Michael Rizaldo
 */
@WebServlet("/addDBQuery")
public class addDBQuery extends HttpServlet {
   // String sql ="INSERT into tbl_userinfo values(?,?,?,?,?,?);";
    String url = "jdbc:mysql://localhost:3306/db_files_of_web_app";
    String username = "root";
    String password = "";
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String userPass = request.getParameter("userPass");     
        String userFName = request.getParameter("userFName");
        String userAddress = request.getParameter("userContact");
        String userContact = request.getParameter("userAddress");     
        
        String Bdate = (request.getParameter("Bmonth") + "/" + request.getParameter("Bday") + "/" + request.getParameter("Byear"));
 
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement("INSERT into tbl_userinfo values('"
                    + userName + "','"
                    + userPass + "','"
                    + userFName + "','"
                    + userAddress + "','"
                    + userContact + "','"
                    + Bdate + "')");

            st.execute();
            response.sendRedirect("user.jsp");
        } catch (Exception e) 
        {
         e.printStackTrace();
        }
    }
    
}
    