package kr.iei.hotel.member.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity	// 시큐리티 활성화
@EnableGlobalMethodSecurity(securedEnabled = true,	// @Secured("ROLE_ADMIN") 활성화 -> 특정 메서드에 걸 수 있음 
							prePostEnabled = true)	// @preAuthorize("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')") 활성화 -> 두 개 이상 권한에 적용
													// @postAuthorize("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')") 활성화 -> 잘 안씀
public class Config extends WebSecurityConfigurerAdapter {
	
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()								// cors 비활성화 -> 몰라
        	.cors().disable()								// csrf 비활성화 -> 몰라
        	.formLogin().disable()							// 몰라
        	.headers().frameOptions().disable();			// 몰라
//        http.authorizeRequests()
//        	.antMatchers("/경로1/**").authenticated()			// '경로1'에 접근 가능 -> 로그인 된 경우
//        	.antMatchers("/경로2/**").access("hasRole('ROLE_ADMIN')")	// '경로2'에 접근 가능 -> 'ROLE_ADMIN' 
//        	.anyRequest().permitAll()						// 나머지 경로에 접근 가능 -> 모든 권한
//        	.and()
//        	.formLogin()
//        	.loginPage("/login")							// 권한 없는 페이지에 접근할 때 이동할 경로
////        	.loginPage("/loginForm")						// 기존 login.jsp 주소를 이렇게 바꾸자 
//        	.usernameParameter("memberEmail")				// default(username)를 변경해줌 -> 보통 안바꾸고 씀(근데 애들이 member로 하라그래서 바꿈. 흥!)
//        	.loginProcessingUrl("/login")					// '/login'호출시 시큐리티가 진행 -> controller에 '/login' 불필요
//        	.defaultSuccessUrl("/")							// 로그인 실패시 이동할 경로
        	;
        	
    }
    
    

}
