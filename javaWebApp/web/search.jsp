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
    <body> <jsp:useBean id="myBeanSearch" scope="page" class="com.login.searchHandler" />
        <jsp:setProperty name="myBeanSearch" property="searchName"/>
        <c:set var="setVarQuery" scope="page" value="${myBeanSearch.searchName}"/>

        <form action =search.jsp>    
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
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Birthdate</th>
                </tr>
                <c:forEach var = "row" items = "${result.rows}">
                    <tr>
                        <td><c:out value = "${row.col_UserName}"/></td>
                        <td><c:out value = "${row.col_FullName}"/></td>
                        <td><c:out value = "${row.col_UserAddress}"/></td>
                        <td><c:out value = "${row.col_UserContact}"/></td>
                        <td><c:out value = "${row.col_UserBirthDate}"/></td>

                        </td>
                    </c:forEach>
            </table>
  


    </body>
</html>
