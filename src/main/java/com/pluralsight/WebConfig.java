package com.pluralsight;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


// Alternative to web.xml and servlet-config.xml
@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.pluralsight")
public class WebConfig {
	

}
