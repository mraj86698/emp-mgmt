
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor='pink'>
         <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
        <sql:query var="rs" dataSource="${ds}">
            select * from employee where empid='${param.empid}';
        </sql:query>
           <form action="searchEmp1.jsp">
            Id:<input type='text' name="empid">
          
            <input type='submit' value="Search"><br/><br/>
            
            <table border="5">
                <th>Empid</th>
                <th>Empname</th>
                <th>Address</th>
                <th>mobno</th>
                <th>email</th>
                <th>designation</th>
           <c:forEach var="row" items="${rs.rows}">
                
               <tr> 
                   <td><c:out value="${row.empid}" /></td> 
                   <td><c:out value="${row.empname}" /></td> 
                   <td><c:out value="${row.address}" /></td> 
                   <td><c:out value="${row.mobno}" /></td> 
                   <td><c:out value="${row.email}" /></td> 
                   <td><c:out value="${row.des}" /></td> 
                   </tr>
            </c:forEach>
                </table>
          
            </form>
            <a href="employeeMain.html">Go Home</a>
            
    </body>
</html>
