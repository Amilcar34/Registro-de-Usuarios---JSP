<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Iinicio</title>
</head>
<body>

	<form action="Registro.jsp">
		<table>
			<tr>
				<td> Usuario: </td>
				<td> <input type="text" name="user"> </td>
			</tr>
			<tr>
				<td> Clave: </td>
				<td> <input type="password" name="pass"> </td>
			</tr>
			<tr>
				<td> Edad: </td>
				<td> <input type="number" name="age" > </td>
			</tr>
			<tr>
				<td><input type="submit" value="Registrar"></td>
			</tr>
		</table>
	</form>
	
	<form action="Inicio.jsp">
		<table>
			<tr>
				<td>Usuario:</td>
				<td><input type="text" name="user"></td>
			</tr>
			<tr>
				<td>Contraseña:</td>
				<td> <input type="password" name="pass"></td>
			</tr>
			<tr>
				<td> <input type="submit" value="Iniciar"></td>
			</tr>
		</table>
	</form>
</body>
</html>