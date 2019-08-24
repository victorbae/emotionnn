package baesso.victor.emotion.service;

import baesso.victor.emotion.model.Emotion;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collection;

public interface AnalyzeService {

    Collection<Emotion> analyze(MultipartFile imagem);
}
