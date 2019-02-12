package com.tripeasy.web.TripEasy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication

public class TripEasyApplication {

	public static void main(String[] args) {
		SpringApplication.run(TripEasyApplication.class, args);
	}

	@Bean
	public RestTemplate restTempObject() {
		return new RestTemplate();
	}
}

