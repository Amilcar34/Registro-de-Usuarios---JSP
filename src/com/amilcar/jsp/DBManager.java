package com.amilcar.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.amilcar.dao.IConnection;

public class DBManager {

	public static boolean validaUsuario(String user, String pass, int age) {
		boolean b = false;

		Connection con = new IConnection() {}.getConnection();
		try {
			String sql = "SELECT * FROM users WHERE user=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user);
			
			ResultSet rs = ps.executeQuery();

			if (rs.absolute(1)) {
				System.out.println("ese usuario ya existe");
			} else {
				b=creaUsuario(user, pass, age);	
			}
		} catch (Exception e) {
			System.out.println("Error en el try de inicio.jsp");
			e.printStackTrace();
		}
		return b;
	}

	private static boolean creaUsuario(String user, String pass, int age) {
		boolean b = false;
		Connection con = new IConnection() {}.getConnection();
		try {
			String sql = "INSERT INTO users (user, password, age) VALUES (?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.setInt(3, age);
			
			ps.executeUpdate();
			b=true;

		} catch (Exception e) {
			System.out.println("Error en el try de inicio.jsp");
			e.printStackTrace();
		}
		
		return b;

	}

	public static int validaUsuario(String user, String pass) {
		int b = 0;

		Connection con = new IConnection() {}.getConnection();
		try {
			String sql = "SELECT * FROM users WHERE user=? AND password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();

			if (rs.absolute(1)) {
				System.out.println("ese usuario existe");
				int age=rs.getInt("age");
				System.out.print("Usuario corresponde a una edad de:" + age);
				b = rs.getInt("age");
			} else {
				System.out.println("Datos de USUARIO INCORRECTOS");
				b = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
}
