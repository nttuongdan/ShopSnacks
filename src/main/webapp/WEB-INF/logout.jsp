<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <title>Logout</title>
</head>
<body>
    <form action="logoutUser">
    <%-- Display content based on user role --%>
    <s:if test="#session.nguoidung.loaiquyen == 'admin', 'khach'">
        <p>Welcome Admin!</p>
        <p>Welcome Khach!</p>
        <%-- Add admin-specific content here --%>
    </s:if>
    
    <s:form action="logout" method="post">
        <s:submit value="Logout" />
    </s:form>
    </form>
</body>
</html>