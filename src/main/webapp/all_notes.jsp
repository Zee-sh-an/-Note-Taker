<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>

<title>All notes : Note Taker</title>
</head>
<body>
	<div class="container">
		<%@include file="normalnavbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All notes:</h1>
		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();

				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto"
						style="height: 100px; width: 100px;" src="img/notes.png"
						alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p align="right"><b class="text-primary"><%=note.getAddedDate()%></b></p>
						<div class="container text-center mt-3">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">update</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>

			</div>
		</div>


	</div>



</body>
</html>