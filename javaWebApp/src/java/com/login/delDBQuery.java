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
@WebServlet("/delDBQuery")
public class delDBQuery extends HttpServlet {

    //String sql = "select * from tbl_userinfo where col_UserName=?";
    //String sql = "Delete from tbl_userinfo where col_UserName='?'";
    String url = "jdbc:mysql://localhost:3306/db_files_of_web_app";
    String username = "root";
    String password = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String delUserName = request.getParameter("delUserName");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement("Delete from tbl_userinfo where col_UserName='" + delUserName + "'");
            st.executeUpdate();
            response.sendRedirect("user.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
