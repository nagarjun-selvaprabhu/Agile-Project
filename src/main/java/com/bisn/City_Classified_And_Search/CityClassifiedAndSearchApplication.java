package com.bisn.City_Classified_And_Search;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("com")
@SpringBootApplication
public class CityClassifiedAndSearchApplication {

	public static void main(String[] args) {
		SpringApplication.run(CityClassifiedAndSearchApplication.class, args);
	}

}
