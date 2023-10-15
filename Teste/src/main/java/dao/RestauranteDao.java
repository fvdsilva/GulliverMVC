package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Restaurante;

public class RestauranteDao implements DaoInterface<Restaurante> {

	private DataSource dataSource;
	
	public RestauranteDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public List<Restaurante> Consultar() {
		
		List<Restaurante> resultado = new ArrayList<Restaurante>();
		
		String sql = "select Id, Titulo, Image, Avaliacao, "
				+ "Endereco, Cep, Cidade, Estado from Restaurante";		
		PreparedStatement stm;
		try {
			stm = this.dataSource.getConnection().prepareStatement(sql);
		
			ResultSet rs = stm.executeQuery();
			
			while(rs.next()) {
				Restaurante restaurante =new Restaurante();
				restaurante.setId(rs.getInt("Id"));
				restaurante.setTitulo(rs.getString("Titulo"));
				restaurante.setImagem(rs.getString("Image"));
				restaurante.setAvaliacao(rs.getDouble("Avaliacao"));
				restaurante.setEndereco(rs.getString("Endereco"));
				restaurante.setCep(rs.getString("Cep"));
				restaurante.setCidade(rs.getString("Cidade"));
				restaurante.setEstado(rs.getString("Estado"));
				
				resultado.add(restaurante);
			}			
		
			return resultado;
		
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Erro ao consultar Restaurantes: "+ e.getMessage());
			return null;
		}
		
	}

}
