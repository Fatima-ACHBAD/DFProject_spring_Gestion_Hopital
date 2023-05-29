package com.example.dfproject.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;


@EnableWebSecurity
@Configuration

public class SecurityConfig {
    @Autowired
    PasswordEncoder passwordEncoder;
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity)
     throws Exception {

       httpSecurity.formLogin().loginPage("/login").defaultSuccessUrl("/").permitAll();
        httpSecurity.authorizeHttpRequests().requestMatchers("/webjars/**").permitAll();

       httpSecurity.authorizeHttpRequests().requestMatchers("/createPatient","/savePatient").hasAnyAuthority("ROLE_ADMIN","ROLE_MEDECIN");
        httpSecurity.authorizeHttpRequests().requestMatchers("/showPatient","/updatePatient","deletePatient").hasAnyAuthority("ROLE_ADMIN");
        httpSecurity.authorizeHttpRequests().requestMatchers("/patientList").hasAnyAuthority("ROLE_ADMIN","ROLE_MEDECIN","ROLE_PATIENT");
       httpSecurity.authorizeHttpRequests().anyRequest().authenticated();
       httpSecurity.exceptionHandling().accessDeniedPage("/accessDenied");
       return  httpSecurity.build();
    }
    @Bean
    public InMemoryUserDetailsManager inMemoryUserDetailsManager()
    {
        return  new InMemoryUserDetailsManager(
                User.withUsername("admin").password(passwordEncoder.encode("123")).roles("ADMIN","USER").build(),
                User.withUsername("medecin").password(passwordEncoder.encode("123")).roles("MEDECIN").build(),
                User.withUsername("patient").password(passwordEncoder.encode("123")).roles("PATIENT").build()

        );
    }
}
