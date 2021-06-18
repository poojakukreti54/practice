<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form action="<%=request.getContextPath()%>/insertAdmin">
			<input type="text" name="adminname" placeholder="Admin Name" />
			<input type="text" name="adminpassword" placeholder="Admin Password" />
			<input type="submit" value="Add Admin"/>


	</form>
</body>
</html>