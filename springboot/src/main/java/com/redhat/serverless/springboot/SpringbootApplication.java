package com.redhat.serverless.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringbootApplication {

  
	@RequestMapping("/")
	public String home() {
		return "Hello, Spring Boot!";
	}

	@RequestMapping("/api/spring")
	public String greeting() {
		return "Welcome, Spring Boot with Serverless!";
	}

	public static void main(String[] args) {
		SpringApplication.run(SpringbootApplication.class, args);
	}

}