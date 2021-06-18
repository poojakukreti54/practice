<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">

.btn{
	color:#add8e6;
	font-size: 15px;
    background-color:#6699cc;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;}


</style>
</head>



<body>

<%
	session = request.getSession(false);
	if (session.getAttribute("uname")==null){
		response.sendRedirect("index.html");
	}
%>
	
	<%@include  file="header.jsp" %>
	<br><br>

	<button class="btn"> <a href="<%=request.getContextPath()%>/newAdmin">Add New Admin</a> </button>
 	<h1>Admin List</h1>
 	
 	<table border="2" cellpadding="10" cellspacing="1">
		<thead>
			<tr>
				<th>Admin ID</th>
				<th>Admin Name</th>
				<th>Admin Password</th>
				<th>Actions</th>
			</tr>
		</thead>
		
		<tbody>

		<c:forEach var="adm" items="${admins}">
		
		<%-- 
			<!-- set up update link for each admin -->
			<c:url var="tempLink" value="AdminServlet">
				<c:param name="command" value="UPDATE"/>
				<c:param name="adminid" value="${adm.id}"/>
		
		
			</c:url> --%>
		
		
			<%-- <c:url>  var = "ad" value="AdminServlet">
			<c:param name="command" value="DELETE"/>
			<c:param name="adminid" value ="${ad.id}"/>
			</c:url>
--%> 
				<tr>
					<td> <c:out value="${adm.adminid}" /> </td>
					<td> <c:out value="${adm.adminname}" /> </td>
					<td> <c:out value="${adm.adminpassword}" /> </td>
					
					<%-- <td><a href="${tempLink}">Update</a></td> --%>
					<%-- <td><a href="AdminServlet?id=<%=admin.adminid()%>">Edit</a></td>  --%>
					
					
					
					<td><%
						//request.setAttribute("adminid", 1);%>
						<a href= "<%=request.getContextPath()%>/deleteAdmin?adminid=<c:out value='${adm.adminid}' />" onclick = "if (!(confirm('Are you sure to delete this student?'))) return false">
						Delete</a>
						
						
					 <%-- <a href="<%=request.getContextPath()%>/deleteAdmin?adminid=<c:out value="${admin.adminid}" />">Delete</a>  --%>
					
					
					</td>
				</tr>



			</c:forEach>
		</tbody>
	</table>











</body>
</html>