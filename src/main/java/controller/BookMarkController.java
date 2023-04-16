package controller;


import dto.BookMarkDTO;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1/bookmark")
public class BookMarkController {


    @PutMapping("/create/{latitude}/{longitude}}")
    public void create(
            @PathVariable("latitude") String latitude,
            @PathVariable("longitude") String longitude,
            @RequestBody BookMarkDTO bookMarkDTO
    ) {

    }

}
