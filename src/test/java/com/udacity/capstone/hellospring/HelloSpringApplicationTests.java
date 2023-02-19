package com.udacity.capstone.hellospring;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class HelloSpringApplicationTests {

  @Autowired
  private HelloController helloController;

  @Test
  void contextLoads() {
  }

  @Test
  void helloControllerTest_Amy() {
    assertThat(helloController.hello("Amy")).isEqualTo("Hello Amy!");
  }

}
