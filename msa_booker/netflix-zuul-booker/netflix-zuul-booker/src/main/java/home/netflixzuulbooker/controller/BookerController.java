package home.netflixzuulbooker.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/booker")
public class BookerController {
    @GetMapping("/message")
    public String messages(@RequestHeader("booker-request") String header) {
        log.info(header);
        return "header first service";
    }

    @GetMapping("/check")
    public String check(@RequestHeader("booker-request") String header) {
        log.info(header);
        return "first service was checked";
    }

    @GetMapping("/customCheck")
    public String customCheck(String header) {
        return "booker health check";
    }
}
