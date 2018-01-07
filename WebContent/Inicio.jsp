<%@page import="com.amilcar.jsp.DBManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%@page import="java.sql.Connection"%>



<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");		
	
	int it = DBManager.validaUsuario(user, pass);
	
	if(it != 0){
		out.print("Usuario corresponde a una edad de:" + it);
	}else{
		out.print("Datos de USUARIO INCORRECTOS");
		response.sendRedirect("http://localhost:8080/RegistroUsuariosJSP/index.jsp");
	}

%>
</body>
</html>