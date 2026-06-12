<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SaludPlus</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
* {
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI';
    background: linear-gradient(135deg,#74ebd5,#acb6e5);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
    margin:0;
}

@keyframes fadeZoom {
    from {opacity:0; transform: scale(0.9);}
    to {opacity:1; transform: scale(1);}
}

.menu {
    background:white;
    padding:40px;
    border-radius:20px;
    width:420px;
    text-align:center;
    box-shadow:0 15px 35px rgba(0,0,0,0.3);
    animation: fadeZoom 0.6s ease;
}

.menu h1 {
    margin-bottom:10px;
    color:#2c3e50;
}

.menu p {
    color:#7f8c8d;
    margin-bottom:20px;
}

.badge {
    display:inline-block;
    background:#e74c3c;
    color:white;
    padding:6px 12px;
    border-radius:20px;
    font-size:14px;
    margin-bottom:20px;
}

.menu a {
    display:flex;
    align-items:center;
    justify-content:center;
    gap:10px;
    margin:12px 0;
    padding:14px;
    border-radius:10px;
    text-decoration:none;
    color:white;
    font-weight:bold;
    transition:0.3s;
}

.btn-registro {
    background:#3498db;
}

.btn-lista {
    background:#2ecc71;
}

.menu a:hover {
    transform: translateY(-3px) scale(1.05);
    box-shadow:0 10px 20px rgba(0,0,0,0.2);
}

.menu i {
    font-size:18px;
}
</style>

</head>

<body>

<div class="menu">

    <h1><i class="fa-solid fa-hospital"></i> SaludPlus</h1>
    

    <div class="badge">
        Pacientes ${total}
    </div>

    <a href="${pageContext.request.contextPath}/view/registro.jsp" class="btn-registro">
        <i class="fa-solid fa-user-plus"></i> Registrar Paciente
    </a>

    <a href="${pageContext.request.contextPath}/PacienteServlet" class="btn-lista">
        <i class="fa-solid fa-list"></i> Ver Pacientes
    </a>

</div>

</body>
</html>