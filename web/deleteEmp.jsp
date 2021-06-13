
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Employee </title>
    </head>
    <body bgcolor="violet">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
        <sql:update dataSource="${ds}" var="rs">
            delete from employee where empid='${param.id}';
             
        </sql:update>
            
    <c:if test="${rs>=1}">
            <font size="5" color='green'> Congratulations ! Data deleted
            successfully.</font><br>
            <a href="adminMain.html">Go Home</a></t>
              <a href="displayEmp.jsp">displayEmployee</a>
        </c:if>
              <!--<c:out value="${param.sid}" />-->
        
   
    </body>
</html>
