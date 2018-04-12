/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Paul Michael Rizaldo
 */
@WebServlet("/update")
public class update extends HttpServlet {
    String sql="update tbl_userinfo set "
            + "col_passWord=?,"
            + "col_FullName=?,"
            + "col_UserContact=?,"
            + "col_UserAddress=?,"
            + "col_UserBirthDate=?"
            + "where col_UserName=?";
    String url = "jdbc:mysql://localhost:3306/db_files_of_web_app";
    String username = "root";
    String password = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String var1 = request.getParameter("var1");
        String var2 = request.getParameter("var2");
        String var3 = request.getParameter("var3");
        String var4 = request.getParameter("var4");
        String var5 = request.getParameter("var5");
        String var6 = request.getParameter("var6");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(sql);    
            st.setString(1,var2);
            st.setString(2,var3);
            st.setString(3,var4);
            st.setString(4,var5);
            st.setString(5,var6);
            st.setString(6,var1);
            st.executeUpdate();
            response.sendRedirect("update.jsp");
          
            
        } catch (Exception e) {
            e.printStackTrace();
    }

    }
}
