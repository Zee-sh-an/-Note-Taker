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
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%@include file="normalnavbar.jsp"%>

		<%
		int note_id = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, note_id);
		s.close();
		%>

		<h1>Edit Note</h1>
		<!-- this is edit form -->
		<form action="UpdateServlet" method="post">
			<div class="form-group">
			
			<input type="hidden" value="<%=note_id%>" class="fotm-control" name="note_id">
			
				<label for="title">Note title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea class="form-control " required="required" id="content"
					name="content" placeholder="Enter your content here"
					style="height: 300px;" ><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save note</button>
			</div>
		</form>
	</div>
</body>
</html>