package com.example.clouddiscoveryeurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class CloudDiscoveryEurekaServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(CloudDiscoveryEurekaServerApplication.class, args);
    }
}
