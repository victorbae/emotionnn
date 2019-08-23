package baesso.victor.emotion.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Emotion {

    private String name;

    private Double value;

    public Integer getIntValue() {
        return this.value.intValue();
    }
}
