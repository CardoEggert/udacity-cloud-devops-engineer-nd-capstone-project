package com.udacity.capstone.HelloSpring;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

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
