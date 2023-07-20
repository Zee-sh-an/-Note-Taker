<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="normalnavbar.jsp"%>
		<h1>Please fill your note detail</h1>
		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note title</label> <input
					name="title" required type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea class="form-control " required="required" id="content"
					name="content" placeholder="Enter your content here" style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">add</button>
			</div>
		</form>
	</div>
</body>
</html>