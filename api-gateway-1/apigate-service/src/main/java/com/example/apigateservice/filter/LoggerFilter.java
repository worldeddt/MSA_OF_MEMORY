package com.example.apigateservice.filter;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.OrderedGatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.core.Ordered;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;


@Slf4j
@Component
public class LoggerFilter extends AbstractGatewayFilterFactory<LoggerFilter.Config> {

    public LoggerFilter() {super(Config.class);}

    @Override
    public GatewayFilter apply(Config config) {
//        return (exchange, chain) -> {
//            ServerHttpRequest request = exchange.getRequest();
//            ServerHttpResponse response  = exchange.getResponse();
//
//            log.info("Global filter baseMessage : {}", config.getBaseMessage());
//
//            if (config.isPreLogger()) {
//                log.info("Global filter start : request id -> {}", request.getId());
//            }
//
//            return chain.filter(exchange).then(Mono.fromRunnable(() -> {
//                if (config.isPostLogger()) {
//                    log.info("Global filter end : request id -> {}", request.getId());
//
//                }
//            }));
//        };

        GatewayFilter filter = new OrderedGatewayFilter((exchange, chain) -> {

            ServerHttpRequest request = exchange.getRequest();
            ServerHttpResponse response = exchange.getResponse();

            log.info("Logger filter message : {}", config.getBaseMessage());
            if (config.isPreLogger()) {
                log.info("Logger PRE filter : request id -> {}", request.getId());
            }
            return chain.filter(exchange).then(Mono.fromRunnable(() -> {
               if (config.isPostLogger()) {
                   log.info("Logger POST filter : response codes -> {}", response.getStatusCode());
               }
            }));

        }, Ordered.HIGHEST_PRECEDENCE);

        return filter;
    }

    @Data
    public static class Config {
        private String baseMessage;
        private boolean preLogger;
        private boolean postLogger;
    }
}
