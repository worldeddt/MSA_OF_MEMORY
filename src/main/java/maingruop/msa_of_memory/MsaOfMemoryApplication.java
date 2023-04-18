package maingruop.msa_of_memory;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
@EnableDiscoveryClient
public class MsaOfMemoryApplication {

    public static void main(String[] args) {
        List<String> df = new ArrayList<>();

        df.size();
        SpringApplication.run(MsaOfMemoryApplication.class, args);
    }

}
