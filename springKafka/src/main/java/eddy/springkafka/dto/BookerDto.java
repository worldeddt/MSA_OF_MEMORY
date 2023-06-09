package eddy.springkafka.dto;

import lombok.Data;


@Data
public class BookerDto {
    public Integer index;
    public String name;
    public String memo;
    public String latitude;
    public String longitude;
    public String mapUrl;
    public String register_datetime;
    public String status;
}
