package com.myportfolio.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	/* 메인 호출 */
	@GetMapping("/")
	public String MainPage() {
		return "main";
	}
	
	@GetMapping("/1")
	public String TESTPage() {
		return "test";
	}

	
}
