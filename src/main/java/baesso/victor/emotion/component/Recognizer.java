package baesso.victor.emotion.component;

import baesso.victor.emotion.model.Emotion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.*;

import static baesso.victor.emotion.component.ImageUtils.toFile;

@Component
public class Recognizer {

    @Autowired
    private TFService tensorFlowModel;

    public Collection<Emotion> reconhece(MultipartFile imagem) throws IOException {

        float[][] predictions = tensorFlowModel.predict(toFile(imagem));

        System.out.println("Raiva -> " + predictions[0][0]);
        System.out.println("Nojo -> " + predictions[0][1]);
        System.out.println("Medo -> " + predictions[0][2]);
        System.out.println("Alegria -> " + predictions[0][3]);
        System.out.println("Neutro -> " + predictions[0][4]);
        System.out.println("Tristeza -> " + predictions[0][5]);
        System.out.println("Surpresa -> " + predictions[0][6]);

        return toCollection(predictions);
    }

    private Collection<Emotion> toCollection(float[][] predictions) {
        Emotion raiva = new Emotion("Raiva", getValue(predictions[0][0]));
        Emotion desgosto = new Emotion("Nojo", getValue(predictions[0][1]));
        Emotion medo = new Emotion("Medo", getValue(predictions[0][2]));
        Emotion alegria = new Emotion("Alegria", getValue(predictions[0][3]));
        Emotion neutro = new Emotion("Neutro", getValue(predictions[0][4]));
        Emotion tristeza = new Emotion("Tristeza", getValue(predictions[0][5]));
        Emotion surpresa = new Emotion("Surpresa", getValue(predictions[0][6]));

        return Arrays.asList(raiva, desgosto, medo, alegria, tristeza, surpresa, neutro);
    }

    public double getValue(float val) {
        return Math.floor(val * 100);
    }
}
