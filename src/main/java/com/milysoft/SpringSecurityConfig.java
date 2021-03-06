package com.milysoft;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.milysoft.auth.handler.LoginSuccessHandler;
import com.milysoft.service.JpaUserDetailService;
@EnableGlobalMethodSecurity(securedEnabled=true, prePostEnabled=true)
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private LoginSuccessHandler successHandler;
		
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired 
	private JpaUserDetailService userDetailService;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/", "/css/**","/js/**", "/image/**", "/listar", "/locale").permitAll().
		//antMatchers("/ver/**").hasAnyRole("USER").
		//antMatchers("/uploads/**").hasAnyRole("USER").
		//antMatchers("/form/**").hasAnyRole("ADMIN").
		//antMatchers("/eliminar/**").hasAnyRole("ADMIN").
		//antMatchers("/factura/**").hasAnyRole("ADMIN").
		anyRequest().authenticated().and().
		formLogin().successHandler(successHandler).
		loginPage("/login").
		permitAll().and().
		logout().permitAll().and().exceptionHandling().accessDeniedPage("/error_403");
	}

	@Autowired
	public void configurerGlobal(AuthenticationManagerBuilder build)throws Exception
	{
		build.userDetailsService(userDetailService).passwordEncoder(passwordEncoder);
			
	}

}
