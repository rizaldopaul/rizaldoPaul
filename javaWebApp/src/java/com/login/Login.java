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
import java.util.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.logindao.LoginDao;

/**
 *
 * @author Paul Michael Rizaldo
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        
        
        LoginDao dao = new LoginDao();
        if (dao.check(uname, pass)){
        response.sendRedirect("user.jsp");
    }
        else{
        response.sendRedirect("index.jsp");           
        }
    }
}
