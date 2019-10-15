package baesso.victor.emotion.service.impl;

import baesso.victor.emotion.component.Recognizer;
import baesso.victor.emotion.model.Emotion;
import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Collection;

@Service
class AnalyzeServiceImpl implements AnalyzeService {

    @Autowired
    private Recognizer reconhecedor;

    @Override
    public Collection<Emotion> analyze(MultipartFile imagem) throws IOException {
        return reconhecedor.reconhece(imagem);
    }
}
