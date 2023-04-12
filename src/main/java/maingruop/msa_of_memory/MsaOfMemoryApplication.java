package maingruop.msa_of_memory;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
public class MsaOfMemoryApplication {

    public static void main(String[] args) {
        List<String> df = new ArrayList<>();

        df.size();
        SpringApplication.run(MsaOfMemoryApplication.class, args);
    }

}
