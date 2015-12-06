package com.finalproject.services;

import javax.servlet.Filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import java.io.IOException;


@Configuration
//@Component
public class SimpleCORSFilter { //implements Filter {


   // public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
    	
    	@Bean
    	public FilterRegistrationBean corsFilter() {
    	    UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
    	    CorsConfiguration config = new CorsConfiguration();
    	    config.setAllowCredentials(true);
    	    config.addAllowedOrigin("*");
    	    config.addAllowedHeader("*");
    	    config.addAllowedMethod("OPTIONS");
    	    config.addAllowedMethod("HEAD");
    	    config.addAllowedMethod("GET");
    	    config.addAllowedMethod("PUT");
    	    config.addAllowedMethod("POST");
    	    config.addAllowedMethod("DELETE");
    	    config.addAllowedMethod("PATCH");
    	    source.registerCorsConfiguration("/**", config);
    	    // return new CorsFilter(source);
    	    final FilterRegistrationBean bean = new FilterRegistrationBean(new CorsFilter(source));
    	    bean.setOrder(0);
    	    return bean;
    	}
    	
//    	HttpServletResponse response = (HttpServletResponse) res;
//        HttpServletRequest request = (HttpServletRequest) req;
//        
//        response.setHeader("Access-Control-Allow-Origin", "*");
//        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, HEAD, DELETE, PATCH, PUT");
//        response.setHeader("Access-Control-Max-Age", "3600");
//        response.setHeader("Access-Control-Allow-Headers", "*");
//        response.setHeader("Access-Control-Allow-Credentials", "true");
//        chain.doFilter(req, res);
//        if(!"OPTIONS".equalsIgnoreCase(request.getMethod())) {
//            chain.doFilter(req, res);
//        }
//    }

    public void init(FilterConfig filterConfig) {}

    public void destroy() {}

}