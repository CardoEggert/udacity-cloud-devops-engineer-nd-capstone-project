package com.udacity.capstone.hellospring;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller for responding to get request.
 */
@RestController
public class HelloController {

  @GetMapping("/v2/hello")
  public String hello(@RequestParam(value = "name", defaultValue = "World") String name) {
    return "Hello %s!".formatted(name);
  }
}
