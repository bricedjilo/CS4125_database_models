package com.finalproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan("com.finalproject")
public class App {
	public static void main(String[] args) {
	//	Flyway flyway = new Flyway();
	//	flyway.setDataSource("jdbc:oracle:thin:@dbsvcs.cs.uno.edu:1521:orcl", "dbrice", "tWK9XNrn");
	//	flyway.setBaselineOnMigrate(true);
	//	flyway.setBaselineDescription("Baseline Version");
	//	flyway.setSchemas("dbrice");
		
	//	flyway.migrate();
		SpringApplication.run(App.class, args);
		
	}

}
