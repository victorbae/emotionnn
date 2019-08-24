package baesso.victor.emotion.service.impl;

import baesso.victor.emotion.model.Emotion;
import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.Collection;

@Primary
@Service
class Recognizer implements AnalyzeService {

    @Override
    public Collection<Emotion> analyze(MultipartFile imagem) {
      return Arrays.asList(
              new Emotion("Alegria", 96d), new Emotion("Surpresa", 20d),
              new Emotion("Tristeza", 2d), new Emotion("Medo", 0d),
              new Emotion("Nojo", 3d), new Emotion("Raiva", 5d),
              new Emotion("Desprezo", 0d));
    }
}
