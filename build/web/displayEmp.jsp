<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="aqua">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
        <sql:query var="rs" dataSource="${ds}">
            select * from employee;
        </sql:query>
            <table border="5">
                <tr>
                <th>Empid</th>
                <th>Empname</th>
                 <th>UserName</th>
                  <th>Password</th>
                <th>Role</th>
                <th>Address</th>
                <th>Phoneno</th>
                <th>emailid</th>
                <th>designation</th>
                <th>Actions</th>
                </tr>
                
      <c:forEach var="row" items="${rs.rows}">
          <!-- set session for staff id here -->
          <c:set var="sid" scope="application" value="${row.empid}" /> 
         
           <tr><td><c:out value="${row.empid}" /></td>
          <td> <c:out value="${row.empname}" /></td>
           <td> <c:out value="${row.username}" /></td>
            <td> <c:out value="${row.password}" /></td>
            <td> <c:out value="${row.role}" /></td>
           <td> <c:out value="${row.address}" /></td>
           <td> <c:out value="${row.mobno}" /></td>
           <td> <c:out value="${row.email}" /></td>
           <td> <c:out value="${row.des}" /></td>
           <td><a href="editEmp.jsp?id=<c:out value="${row.empid}"/>">Edit</a>
           <a href="deleteEmp.jsp?id=<c:out value="${row.empid}"/>">Delete</a></td></tr>
    </c:forEach>
                
        </table>
            
        <a href="adminMain.html">Go Home</a>
    </body>
</html>
