package baesso.victor.emotion.component;

import baesso.victor.emotion.model.Emotion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

@Component
public class Recognizer {

    @Autowired
    private TFService tensorFlowModel;

    public Collection<Emotion> reconhece(MultipartFile imagem) throws IOException {

        float[][] predictions = tensorFlowModel.predict(imagem);

        //@formatter:off
        System.out.println(">>> Predições >>>" +
                "\nRaiva -> " + predictions[0][0] +
                "\nNojo -> " + predictions[0][1] +
                "\nMedo -> " + predictions[0][2] +
                "\nAlegria -> " + predictions[0][3] +
                "\nNeutro -> " + predictions[0][4] +
                "\nTristeza -> " + predictions[0][5] +
                "\nSurpresa -> " + predictions[0][6] +
        "\n>>> End >>>");
        //@formatter:on

        return toCollection(predictions);
    }

    private Collection<Emotion> toCollection(float[][] predictions) {
        Emotion raiva = new Emotion("Raiva", getValue(predictions[0][0]));
        Emotion nojo = new Emotion("Nojo", getValue(predictions[0][1]));
        Emotion medo = new Emotion("Medo", getValue(predictions[0][2]));
        Emotion alegria = new Emotion("Alegria", getValue(predictions[0][3]));
        Emotion neutro = new Emotion("Neutro", getValue(predictions[0][4]));
        Emotion tristeza = new Emotion("Tristeza", getValue(predictions[0][5]));
        Emotion surpresa = new Emotion("Surpresa", getValue(predictions[0][6]));

        return Arrays.asList(alegria,  surpresa, raiva, medo, nojo, tristeza, neutro);
    }

    public double getValue(float val) {
        return new BigDecimal(val * 100).setScale(2, RoundingMode.HALF_EVEN).doubleValue();
    }
}
