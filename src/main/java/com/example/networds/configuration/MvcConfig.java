package com.example.networds.configuration;

import com.example.networds.utilit.RedirectInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${upload.path}")
    private String uploadPath;

    @Bean
    public RestTemplate getRestTemplate() {
        return new RestTemplate();
    }


    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/img/**")
              .addResourceLocations("file://" + uploadPath + "/");
        registry.addResourceHandler("/static/**")
              .addResourceLocations("classpath:/static/");
        registry.addResourceHandler("/static/images/**")
              .addResourceLocations("classpath:/static/images/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new RedirectInterceptor());
    }
}
