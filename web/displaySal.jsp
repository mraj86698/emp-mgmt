<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Salary Page</title>
    </head>
    <body bgcolor="aqua">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
        <sql:query var="rs" dataSource="${ds}">
            select * from salary;
        </sql:query>
            <table border="5">
                <tr>
                <th>Empid</th>
                <th>BasicSal</th>
                <th>HRA</th>
                <th>TA</th>
                <th>DA</th>
                <th>Loan</th>
                <th>ESI</th>
                <th>PF</th>
                <th>IT</th>
                <th>Allowance</th>
                <th>Deduction</th>
                <th>GrossSal</th>
                <th>NetSal</th>
                </tr>
                
      <c:forEach var="row" items="${rs.rows}">
          <!-- set session for Employee id here -->
          <c:set var="sid" scope="application" value="${row.empid}" /> 
         
           <tr><td><c:out value="${row.empid}" /></td>
          <td> <c:out value="${row.basicsal}" /></td>
           <td> <c:out value="${row.hra}" /></td>
            <td> <c:out value="${row.ta}" /></td>
            <td> <c:out value="${row.da}" /></td>
           <td> <c:out value="${row.loan}" /></td>
           <td> <c:out value="${row.esi}" /></td>
           <td> <c:out value="${row.pf}" /></td>
           <td> <c:out value="${row.it}" /></td>
           <td> <c:out value="${row.allowance}" /></td>
             <td> <c:out value="${row.deduction}" /></td>
               <td> <c:out value="${row.grosssal}" /></td>  
               <td> <c:out value="${row.netsal}" /></td>
               
           </tr>
    </c:forEach>
                
        </table>
            
        <a href="adminMain.html">Go Home</a>
    </body>
</html>
