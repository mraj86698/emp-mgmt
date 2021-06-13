
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
    </head>
    <body bgcolor="violet">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
        <sql:update dataSource="${ds}" var="rs">
            insert into employee values(?,?,?,?,?,?,?,?,?)
            <sql:param value="${param.empid}" />
            <sql:param value="${param.empname}" />  
            <sql:param value="${param.username}" />
            <sql:param value="${param.password}" /> 
            <sql:param value="${param.role}"/>
            <sql:param value="${param.address}" /> 
            <sql:param value="${param.mobno}"/> 
            <sql:param value="${param.email}" /> 
            <sql:param value="${param.des}" /> 
        </sql:update>
    
        <c:if test="${not empty param.empid && not empty param.empname && not empty param.username && not empty param.password && not empty param.address && not empty param.mobno && not empty param.email && not empty param.des}">
            <c:out value="details inserted successfully" />
            <a href="adminMain.html">Go Home</a>   
        </c:if>
    
    </body>
</html>
