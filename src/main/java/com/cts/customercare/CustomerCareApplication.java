package com.cts.customercare;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.cts")
public class CustomerCareApplication {

	public static void main(String[] args) {
		SpringApplication.run(CustomerCareApplication.class, args);
	}

}
