<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : user
    Created on : 04 10, 18, 2:25:13 PM
    Author     : Paul Michael Rizaldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>    
    <a href ="update.jsp">update page, click here<br></br></a>
    <form action = "search.jsp" name="searchform" target="_blank">
     Enter Username   <input type="text" name="searchName" />
        <input type="submit" value="search">
    </form>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <form action="addDBQuery" method="post">
        Enter Username<br><input type="text" name="userName"/></br>
        Enter Password<br><input type="password" name="userPass"/></br>
        Enter Full Name<br><input type="text" name="userFName"/></br>
        Enter Address<br><input type="text" name="userAddress"/></br>
        Enter Contact<br><input type="text" name="userContact"/></br>
        Enter Birth Month<br><select name="Bmonth">
            <option>January</option>
            <option>February</option>
            <option>March</option>
            <option>April</option>
            <option>May</option>
            <option>June</option>
            <option>July</option>
            <option>August</option>
            <option>September</option>
            <option>October</option>
            <option>November</option>
            <option>December</option>
        </select>
        <select name="Bday">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            <option>11</option>
            <option>12</option>
            <option>13</option>
            <option>14</option>
            <option>15</option>
            <option>16</option>
            <option>17</option>
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>

        </select>
        <select name="Byear">
            <option>2001</option>
            <option>2002</option>
            <option>2003</option>
            <option>2004</option>
            <option>2005</option>
            <option>2006</option>
            <option>2007</option>
            <option>2008</option>
            <option>2009</option>
            <option>2010</option>
            <option>2011</option>
            <option>2012</option>
        </select>
        <input type="submit" value="save this new account"/>

    </form>
<br></br>
<br></br>
<br></br>
<br></br>
    <form action= "delDBQuery" method="post">
        Enter username to delete<input type="text" name="delUserName" />
        <input type="submit" value="delete account" />
    </form>




</head>
<body>
    <h1></h1>
</body>
</html>
