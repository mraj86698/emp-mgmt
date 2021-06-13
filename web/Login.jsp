<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body bgcolor="gold">
         <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
       
    <sql:query var="result" dataSource="${ds}">
        select * from employee where username=? and password=? and role=?;
        <sql:param value="${param.username}"/>
        <sql:param value="${param.password}"/>
        <sql:param value="${param.role}"/>
    </sql:query>
        <c:choose>
            <c:when test="${result.rowCount>0}">
                
                <c:if test="${param.role=='admin'}">
                    <c:redirect url="adminMain.html"/>
                </c:if> 
                <c:if test="${param.role=='employee'}">
                    <c:redirect url="employeeMain.html"/>
                </c:if> 
            </c:when>
            <c:otherwise>
                
            </c:otherwise>
        </c:choose>

       
</body>
</html>
