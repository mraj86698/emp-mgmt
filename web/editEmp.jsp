<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit Emp</title>
    </head>
    <body>
         <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
         <sql:query dataSource="${ds}" var="rs">select * from employee where empid=?;
             <sql:param value="${param.id}" />
         </sql:query>
         
          <form action="updateEmp.jsp" method="post">
            
                <caption>Update Employee</caption>
                <table border="5">
                <tr>
                <th>Empid</th>
                <th>Empname</th>
                <th>UserName</th>
                <th>Password</th>
                <th>Role</th>
                <th>Address</th>
                <th>MobNo</th>
                <th>Email</th>
                <th>Designation</th>
                    
                </tr>
                <c:forEach var="row" items="${rs.rows}">
                    <tr>
                         
                    <td><input type="text" value="${row.empid}" name="empid"/></td> 
                    <td><input type="text" value="${row.empname}" name="empname"/></td>
                    <td><input type="text" value="${row.username}" name="username"/></td>
                    <td><input type="text" value="${row.password}" name="password"/></td>
                    <td><input type="text" value="${row.role}" name="role"/></td>
                    <td><input type="text" value="${row.address}" name="address"/></td>
                    <td><input type="text" value="${row.mobno}" name="mobno"/></td>
                    <td><input type="text" value="${row.email}" name="email"/></td>
                    <td><input type="text" value="${row.des}" name="des"/></td>
                    
                   <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
                </table>
                    <%
                        if(request.getParameter("id")==null){
                            out.println("id is empty");
                        }
                        %>
            <a href="adminMain.html">Go Home</a>
            <a href="displayEmp.jsp">displayEmployee</a>
        </form>
         
    </body>
</html>
