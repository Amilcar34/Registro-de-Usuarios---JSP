<%@page import="com.amilcar.jsp.DBManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	String user = request.getParameter("user");
	
	String pass = request.getParameter("pass");
	
	int age = Integer.parseInt(request.getParameter("age"));
	
	boolean bl = DBManager.validaUsuario(user, pass, age);

	if(bl)	out.print("exito");
	else 	{
		out.print("este usuario ya existe");
		response.sendRedirect("http://localhost:8080/RegistroUsuariosJSP/index.jsp");
	}
%>
</body>
</html>