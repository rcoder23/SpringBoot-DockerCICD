package com.devops.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
	
	@GetMapping("/welcome")
	public ResponseEntity<String> greeting(){
		return ResponseEntity.ok("Hi it is working fine...");
	}

}
