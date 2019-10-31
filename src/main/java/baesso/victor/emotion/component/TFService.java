package baesso.victor.emotion.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.tensorflow.SavedModelBundle;
import org.tensorflow.Session;
import org.tensorflow.Tensor;
import org.tensorflow.TensorFlow;

import java.io.IOException;


@Component
public class TFService {

    public float[][] predict(float[][][][] imgMatriz) throws IOException {
        System.out.println("TensorFlow " + TensorFlow.version());
        SavedModelBundle smb = SavedModelBundle.load("src/model", "serve");
        Session s = smb.session();

        Tensor inputTensor = Tensor.create(imgMatriz, Float.class);

        float[][] y = s.runner()
                .feed("Placeholder:0", inputTensor)
                .fetch("softmax_tensor:0")
                .run().get(0).copyTo(new float[1][7]);

        return y;
    }

}
