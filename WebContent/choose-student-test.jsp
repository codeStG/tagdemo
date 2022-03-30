<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*,com.stgcodes.jsp.tagdemo.Student" %>

<%
	List<Student> data = new ArrayList<>();

	data.add(new Student("John", "Doe", false));
	data.add(new Student("George", "Torres", false));
	data.add(new Student("Bobbie", "Zamudio", true));

	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>
	<table border="1">
	
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	
	</tr>
	

	<c:forEach var="student" items="${myStudents}"> 
		
		<tr>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>
				<c:choose>
				
				<c:when test="${student.goldCustomer}">
					Special Discount
				</c:when>
				
				<c:otherwise>
					No Discount
				</c:otherwise>
				
				</c:choose>
			</td>
		</tr>
		
	</c:forEach>
	
	</table>

</body>


</html>