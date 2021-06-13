 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="violet">
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/emp?zeroDateTimeBehavior=convertToNull" user="root" password="mysql" />
        <sql:update dataSource="${ds}" var="rs">
            update employee set empname=?,username=?,password=?,role=?,address=?,mobno=?,email=?,des=? where empid='${param.empid}';
            <sql:param value="${param.empname}" />
            <sql:param value="${param.username}"/>
            <sql:param value="${param.password}"/>
            <sql:param value="${param.role}"/>
            <sql:param value="${param.address}"/>
            <sql:param value="${param.mobno}"/>
            <sql:param value="${param.email}"/>
            <sql:param value="${param.des}"/>  
        </sql:update>
            
    <c:if test="${rs>=1}">
            <font size="5" color='red'> Congratulations ! Data updated
            successfully.</font>
              <a href="adminMain.html">Go Home</a>
              <a href="displayEmp.jsp">displayEmployee</a>
        </c:if>
              
            
              
                     

    </body>
</html>
