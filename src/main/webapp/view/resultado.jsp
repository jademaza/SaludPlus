<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Resultado</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<c:if test="${not empty mensaje}">
<div class="toast">
<i class="fa fa-check-circle"></i> ${mensaje}
</div>
</c:if>

<script>
setTimeout(() => {
    const toast = document.querySelector(".toast");
    if (toast) {
        toast.style.animation = "hideToast 0.5s forwards";
    }
}, 3000);
</script>

<div class="card">
<h3 style="text-align:center;">
<i class="fa fa-user"></i> Paciente Registrado
</h3>

<p><b>Nombre:</b> ${paciente.nombre}</p>
<p><b>Apellido:</b> ${paciente.apellido}</p>
<p><b>Edad:</b> ${paciente.edad}</p>
<p><b>DNI:</b> ${paciente.dni}</p>
<p><b>Síntomas:</b> ${paciente.sintomas}</p>
</div>

<div class="table-container">

<h3 style="text-align:center;">
<i class="fa fa-list"></i> Lista (${total})
</h3>

<c:if test="${not empty lista}">
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
            <th>DNI</th>
            <th>Síntomas</th>
        </tr>

        <c:forEach var="p" items="${lista}">
            <tr>
                <td>${p.nombre}</td>
                <td>${p.apellido}</td>
                <td>${p.edad}</td>
                <td>${p.dni}</td>
                <td>${p.sintomas}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</div>

<div class="actions">
<a href="${pageContext.request.contextPath}/view/registro.jsp" class="btn-blue">
<i class="fa fa-user-plus"></i> Registrar otro
</a>

<a href="${pageContext.request.contextPath}/index.jsp" class="btn-gray">
<i class="fa fa-home"></i> Menú
</a>
</div>

</body>
</html>