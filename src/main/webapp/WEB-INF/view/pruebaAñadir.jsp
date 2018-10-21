<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="js/ajax.js"></script>

</head>
<body>

<form  action="/foto" method="post" enctype="multipart/form-data">
  <input type="file" name="file" id="foto">
  <p>
    <input type="submit" value="Enviar" id="recogerFoto">
  </p>
</form>	
</body>
</html>