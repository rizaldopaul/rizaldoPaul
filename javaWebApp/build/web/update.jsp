<%@page import="com.login.searchHandler"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
        </title>
    </head>
    <body>
        <jsp:useBean id="myBeanSearch" scope="page" class="com.login.searchHandler" />
        <jsp:setProperty name="myBeanSearch" property="searchName"/>
        <c:set var="setVarQuery" scope="page" value="${myBeanSearch.searchName}"/>

        <form action =update.jsp>    
            <input type="text" name="searchName"/>
            <input type="submit" value="search" />            
        </form>
        <form action=user.jsp>
            <input type="submit" value="Main Page" />  
        </form>    

        <c:set var="stringQuery" value="select * from tbl_userinfo where col_username=?"/> 
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/db_files_of_web_app"
                           user = "root"  password = ""/>

        <sql:query dataSource = "${snapshot}" var = "result">
            <c:out value="${stringQuery}"/>
            <sql:param value = "${setVarQuery}" />

        </sql:query>
        <table border = "1" width = "100%">


            <tr>
                <th>User ID</th>
                <th>Password</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Birthdate</th>
            </tr>
            <form action="update">
                <c:forEach var = "row" items = "${result.rows}">
                    <tr>
                        <td><input type="text" name="var1" id="isTrue" value = ${row.col_UserName}></td>
                        <td><input type="password" name="var2" value = ${row.col_passWord}></td>
                        <td><input type="text" name="var3" value = ${row.col_FullName}></td>
                        <td><input type="text" name="var4" value = ${row.col_UserContact}></td>
                        <td><input type="text" name="var5" value = ${row.col_UserAddress}></td>
                        <td><input type="text" name="var6" value = ${row.col_UserBirthDate}></td>
                    <input type="submit" value="update info"></td>
                </c:forEach>
                </table>

                </body>
                </html>
            </form>
