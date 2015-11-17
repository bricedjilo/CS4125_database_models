package com.oraclejdbc.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterBatchUpdateUtils;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component("offersDao")
public class OffersDAO {
	
	private NamedParameterJdbcTemplate namedParameterjdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.namedParameterjdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	public List<Offers> getOffers() {

		return namedParameterjdbcTemplate
				.query("select * from offers", new RowMapper<Offers>() {

			public Offers mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offers offer = new Offers();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setText(rs.getString("text"));
				offer.setEmail(rs.getString("email"));
				return offer;
			}
		});
	}
	
	public List<Offers> getOffersByName(String name) {
		MapSqlParameterSource mapSqlPramSource = new MapSqlParameterSource();
		mapSqlPramSource.addValue("name", name);
		
		return namedParameterjdbcTemplate
				.query("select * from offers where name = :name", 
						mapSqlPramSource, new RowMapper<Offers>() {

			public Offers mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offers offer = new Offers();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setText(rs.getString("text"));
				offer.setEmail(rs.getString("email"));
				return offer;
			}
		});
	}
	
	public int delete(int id) {
		MapSqlParameterSource mapSqlPramSource = new MapSqlParameterSource("id", id);
		return namedParameterjdbcTemplate.update("delete from offers where id=:id", mapSqlPramSource);
	}
	
	public boolean update(Offers offer){
		BeanPropertySqlParameterSource beanSqlParamSource = 
				new BeanPropertySqlParameterSource(offer);
		return namedParameterjdbcTemplate.update("update offers set "
				+ "name=:name, text=:text, email=:email where id=:id", beanSqlParamSource) == 1;
	}
	
	public boolean create(Offers offer) {
		BeanPropertySqlParameterSource beanSqlParamSource = new BeanPropertySqlParameterSource(offer);	
		return namedParameterjdbcTemplate.update("insert into offers(name, text, email) "
				+ "values (:name, :text, :email)", beanSqlParamSource) == 1;
	}
	
	@Transactional
	public int[] create(List<Offers> offers) {
		SqlParameterSource[] sqlPramSource = SqlParameterSourceUtils.createBatch(offers.toArray());
		return namedParameterjdbcTemplate.batchUpdate("insert into offers(id, name, text, email) "
				+ "values (:id, :name, :text, :email)", sqlPramSource);
	}
	
	public Offers getOfferById(int id) {
		MapSqlParameterSource mapSqlPramSource = new MapSqlParameterSource();
		mapSqlPramSource.addValue("id", id);
		
		return namedParameterjdbcTemplate
				.queryForObject("select * from offers where id = :id", 
						mapSqlPramSource, new RowMapper<Offers>() {

			public Offers mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offers offer = new Offers();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setText(rs.getString("text"));
				offer.setEmail(rs.getString("email"));
				return offer;
			}
		});
	}

}
