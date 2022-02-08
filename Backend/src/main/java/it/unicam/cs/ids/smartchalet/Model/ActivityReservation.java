package it.unicam.cs.ids.smartchalet.Model;

import lombok.*;
import org.springframework.data.annotation.Id;
import java.util.Date;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class ActivityReservation {

    @Id
    private UUID id;
    private String userId;
    private Date date;
    private String activityName;
    private int capacity;
}
