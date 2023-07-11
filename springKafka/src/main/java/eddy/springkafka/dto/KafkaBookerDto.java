package eddy.springkafka.dto;


import eddy.springkafka.payload.BookerPayload;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

@Data
@AllArgsConstructor
public class KafkaBookerDto implements Serializable {
    private Schema schema;
    private BookerPayload payload;
}