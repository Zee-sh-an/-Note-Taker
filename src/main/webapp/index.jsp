<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp"%>

<title>Note Taker</title>
</head>
<body>

	<div class="container">
		<%@include file="normalnavbar.jsp"%>

		<div class="card mt-3">
			<img style="height: 400px; width: 400px" src="img/notes.png"
				class="img-fluid mx-auto">
			<h1 class="text-primary text-center">Start taking your notes</h1>

			<div class="container text-center">
				<a href="add_notes.jsp"><button type="submit" class="btn btn-primary ">Start here</button></a>
			</div>

		</div>

	</div>


</body>
</html>