<%@page import="java.util.Iterator"%>
<%@page import="userEntity.UserEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Update </title>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
</head>
<body style="background-color: #fffec4">
	<%@ include file="crudNavbar.jsp" %>
	
	<!-- Update Request - List in tabular form to perform update query -->
	<div class="container">
		<div class="row">
			<div class="offset-2 col-8">
				<table class="table text-center bg-dark text-light align-middle rounded">
					<thead>
						<tr>
							<th> id </th>
							<th> Username </th>
							<th> Password </th>
							<th> Contact </th>
							<th> Action </th>
						</tr>
					</thead>
					
					<tbody>
							<%
								int n = 0;
								List<UserEntity> userList = (List) request.getAttribute("userList");
								if(request.getAttribute("userList") != null){
									
									Iterator<UserEntity> iterator = userList.iterator();
									while(iterator.hasNext()){
										UserEntity entity = iterator.next();
							%>
							<tr>
								<td class="align-middle"> <%= ++n %> </td>
								<td class="align-middle"> <%= entity.getUsername() %> </td>
								<td class="align-middle"> <%= entity.getPassword() %> </td>
								<td class="align-middle"> <%= entity.getContact() %> </td>
								<td> <a class="btn btn-warning" href="update?id=<%= entity.getId()%>"> Update </a> </td>
							</tr>
							<%
									}
								}
							%>
					</tbody>
				
				</table>
			</div>
		</div>
	</div>
</body>
</html>