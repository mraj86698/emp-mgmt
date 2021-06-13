
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            insert into salary values(?,?,?,?,?,?,?,?,?,?,?,?,?)
            <sql:param value="${param.empid}" />
            <sql:param value="${param.basicsal}" />
            <sql:param value="${param.hra}" />
            <sql:param value="${param.ta}" />
            <sql:param value="${param.da}" />
            <sql:param value="${param.loan}" />
            <sql:param value="${param.esi}" />
            <sql:param value="${param.pf}" />
            <sql:param value="${param.it}" />
            <sql:param value="${param.allowance}" />   
            <sql:param value="${param.deduction}" />
            <sql:param value="${param.grosssal}" />   
            <sql:param value="${param.netsal}" />
            </sql:update>
    
        <c:if test="${not empty param.empid && not empty param.basicsal && not empty param.hra && not empty param.ta && not empty param.da && not empty param.loan && not empty param.esi && not empty param.pf && not empty param.it && not empty param.allowance && not empty param.deduction && not empty param.grosssal && not empty param.netsal }">
            <c:out value="details inserted successfully" />
            <a href="adminMain.html">Go Home</a>   
        </c:if>
             
    
    </body>
</html>
