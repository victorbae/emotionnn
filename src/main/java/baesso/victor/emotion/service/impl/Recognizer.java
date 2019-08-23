package baesso.victor.emotion.service.impl;

import baesso.victor.emotion.model.Emotion;
import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collection;

@Service
class Recognizer implements AnalyzeService {
    @Override
    public Collection<Emotion> analyze() {
      return Arrays.asList(
              new Emotion("Alegria", 96d), new Emotion("Surpresa", 20d),
              new Emotion("Tristeza", 2d), new Emotion("Medo", 0d),
              new Emotion("Nojo", 3d), new Emotion("Raiva", 5d),
              new Emotion("Desprezo", 0d),    new Emotion("Exemplo", 10d));
    }
}
