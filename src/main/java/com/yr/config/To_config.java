//package com.yr.config;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
//
//public class To_config {
//
//	/**
//	 * 使用配置加入静态资源使用
//	 * 
//	 * @author zxy-un 
//	 * 2019年4月2日 下午10:02:16
//	 */
//	@Configuration
//	public class Config extends WebMvcConfigurationSupport {
//
//		@Override
//		public void addResourceHandlers(ResourceHandlerRegistry registry) {
//			// 后面的静态资源会使用test访问到,而自己访问不到
//			// http://localhost:8080/static/10.jpg
////			registry.addResourceHandler("/static/**").addResourceLocations("file:/F:/zxy/my.png/Those funny/10.jpg");
////			registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/**"); // http://localhost:8080/static/10.jpg
//		}
//	}
//	
////	@Bean
////    public InternalResourceViewResolver viewResolver() {
////        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
////        viewResolver.setPrefix("/WEB-INF/");
////        viewResolver.setSuffix(".jsp");
////        viewResolver.setViewClass(JstlView.class);
////        return viewResolver;
////    }
//
//}
