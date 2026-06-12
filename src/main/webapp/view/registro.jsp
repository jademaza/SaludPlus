<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Registro</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>

<div class="container">

<h2>Registro Paciente</h2>

<p style="color:red;">${error}</p>

<form action="${pageContext.request.contextPath}/PacienteServlet" method="post">

<div class="input-group">
<i class="fa fa-user"></i>
<input name="nombre" placeholder="Nombre">
</div>

<div class="input-group">
<i class="fa fa-user"></i>
<input name="apellido" placeholder="Apellido">
</div>

<div class="input-group">
<i class="fa fa-cake-candles"></i>
<input name="edad" placeholder="Edad">
</div>

<div class="input-group">
<i class="fa fa-id-card"></i>
<input name="dni" placeholder="DNI">
</div>

<div class="input-group">
<i class="fa fa-notes-medical"></i>
<input name="sintomas" placeholder="Síntomas">
</div>

<button class="btn btn-primary">Registrar</button>

</form>

<button class="btn btn-back"
onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'">
Volver al menú
</button>

</div>

</body>
</html>