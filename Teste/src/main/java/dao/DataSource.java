package dao;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

public class DataSource {
	
	private Connection connection;
	
	public  DataSource() {
		try {
			DriverManager.registerDriver(new Driver());			
			connection = DriverManager
					.getConnection("jdbc:mysql://127.0.0.1:3306/gulliverdatabase",
								"root","root");
			
			if (connection != null) {
				System.out.println("Conectado com sucesso!");
			} else {
				System.out.println("Erro ao conectar");
			}
		} catch (Exception ex) {
			System.out.println("Erro ao conectar com o SGBD. Erro: " + ex.getMessage());
		}
		
	}
	
	public Connection getConnection() {
		return connection;
	}
}
