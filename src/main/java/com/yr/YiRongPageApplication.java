package com.yr;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.yr.mapper")
public class YiRongPageApplication {

	public static void main(String[] args) {
		SpringApplication.run(YiRongPageApplication.class, args);
	}

}
