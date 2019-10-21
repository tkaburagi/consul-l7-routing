package com.example.demo;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.net.URI;

@RestController
public class ClientController {

    private final RestTemplate restTemplate;

    public ClientController(RestTemplateBuilder builder) {
        this.restTemplate = builder.build();
    }

    @RequestMapping(value = "/v1")
    public String home_v1() throws Exception {
        URI url = new URI("http://127.0.0.1:5000/v1");
        String message = restTemplate.getForEntity(url, String.class).getBody();

        return "Greetings From API -> " + message;
    }

    @RequestMapping(value = "/v2")
    public String home_v2() throws Exception {
        URI url = new URI("http://127.0.0.1:5000/v2");
        String message = restTemplate.getForEntity(url, String.class).getBody();

        return "Greetings From API -> " + message;
    }

    @RequestMapping(value = "/test")
    public String test() throws Exception {

        return "hi";
    }
}


