//package maingruop.msa_of_memory.security;
//
//import org.springframework.security.config.annotation.SecurityConfigurerAdapter;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.web.DefaultSecurityFilterChain;
//
////@EnableWebSecurity
//class WebSecurityConfigure extends SecurityConfigurerAdapter<DefaultSecurityFilterChain, HttpSecurity> {
//
//    @Override
//    public void init(HttpSecurity builder) throws Exception {
//        super.init(builder);
//
//        builder.csrf().disable().authorizeHttpRequests()
//                .anyRequest().authenticated().and().httpBasic();
//    }
//}
