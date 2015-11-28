package com.finalproject;

import org.flywaydb.core.Flyway;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan("com.finalproject")
public class App {
	public static void main(String[] args) {
		Flyway flyway = new Flyway();
		flyway.setDataSource("jdbc:oracle:thin:@dbsvcs.cs.uno.edu:1521:flyway_db", "dbrice", "tWK9XNrn");
		//flyway.setSchemas("shematest.sql");
		flyway.setBaselineOnMigrate(true);
		flyway.setBaselineDescription("Base version");
		flyway.migrate();
		SpringApplication.run(App.class, args);
		
	}

}
