<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
         <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
       <c:if test="${param.login != null}">
    <sql:query var="result" dataSource="con">
        select * from adminlogin where username=? and password=?;
        <sql:param value="${param.username}"/>
        <sql:param value="${param.password}"/>
    </sql:query>
    <c:if test="${result.rowsByIndex[0][0]==1}">
        <c:redirect url="adminMain.html"></c:redirect>
    </c:if>
    <c:if test="${result.rowsByIndex[0][0]==0}">
            <fieldset>
                <caption>Error:</caption>
                <font color="red">Invalid credientials</font>
            </fieldset>
    </c:if>
        </c:if>
</body>
</html>
