package baesso.victor.emotion.service.impl;

import baesso.victor.emotion.model.Emotion;
import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collection;

public class RecognizerFaceAPI implements AnalyzeService {
    @Override
    public Collection<Emotion> analyze(MultipartFile imagem) {
        return null;
    }
}
