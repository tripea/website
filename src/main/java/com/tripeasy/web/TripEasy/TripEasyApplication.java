package com.tripeasy.web.TripEasy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
<<<<<<< HEAD

=======
//@EnableOAuth2Sso
>>>>>>> a5b324a4146fbb82fd54483e9ee14760438715d6
public class TripEasyApplication {

	public static void main(String[] args) {
		SpringApplication.run(TripEasyApplication.class, args);
	}

	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
}

