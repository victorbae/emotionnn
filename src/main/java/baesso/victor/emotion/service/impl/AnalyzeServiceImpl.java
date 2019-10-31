package baesso.victor.emotion.service.impl;

import baesso.victor.emotion.component.Recognizer;
import baesso.victor.emotion.model.Emotion;
import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

@Service
class AnalyzeServiceImpl implements AnalyzeService {

    @Autowired
    private Recognizer reconhecedor;

    @Override
    public Collection<Emotion> analisa(MultipartFile imagem) throws IOException {
//        Emotion raiva = new Emotion("Raiva", 4);
//        Emotion nojo = new Emotion("Nojo", 0);
//        Emotion medo = new Emotion("Medo", 0);
//        Emotion alegria = new Emotion("Alegria", 6);
//        Emotion neutro = new Emotion("Neutro", 90);
//        Emotion tristeza = new Emotion("Tristeza", 0);
//        Emotion surpresa = new Emotion("Surpresa", 0);

//        return Arrays.asList(alegria,  surpresa, raiva, medo, nojo, tristeza, neutro);
        return reconhecedor.reconhece(imagem);
    }
}
