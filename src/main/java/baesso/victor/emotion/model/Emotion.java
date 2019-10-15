package baesso.victor.emotion.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class Emotion {

    private String name;

    private double value;

    public Emotion(String nome, double value){
        this.name = nome;
        this.value = value;
    }
}
