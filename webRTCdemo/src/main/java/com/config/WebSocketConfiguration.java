package com.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;


//시그널링 서버의 구현?
//클라이언트 애플리케이션이 WebSocket 연결로 등록하는 데 사용할 수 있는 엔드 포인트 만들기  
//스프링 부트에서 이를 수행하기 위해 WebSocketConfigurer 를 확장 하고 registerWebSocketHandlers 메소드를 재정의 하는 @Configuration 클래스를 작성
@Configuration
@EnableWebSocket
@Controller
public class WebSocketConfiguration implements WebSocketConfigurer {
	
	@Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(new SocketHandler(), "/socket")
          .setAllowedOrigins("*").withSockJS();
    }
	
}
