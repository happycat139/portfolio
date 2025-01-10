package com.myportfolio.Controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {

    // 환경 변수 주입
    @Value("${server.env}")
    private String env;

    @Value("${server.port}")
    private String serverPort;

    @Value("${server.serverAddress}")
    private String serverAddress;

    @Value("${serverName}")
    private String serverName;

    @GetMapping("/hc")
    public ResponseEntity<?> healthCheck() {
        // Map에 값 추가
        Map<String, String> responseData = new HashMap<>();
        responseData.put("serverName", serverName);
        responseData.put("serverAddress", serverAddress);
        responseData.put("serverPort", serverPort);
        responseData.put("env", env);

        // ResponseEntity를 통해 응답 반환
        return ResponseEntity.ok(responseData);
    }
    
    @GetMapping("/env")
    public ResponseEntity<?> getEnv(){
    	
    	return ResponseEntity.ok(env);
    }
    
    
    
    
}
