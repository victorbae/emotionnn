package baesso.victor.emotion.component;

import org.bytedeco.opencv.opencv_core.CvScalar;
import org.bytedeco.opencv.opencv_core.IplImage;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import static org.bytedeco.javacv.Java2DFrameUtils.toIplImage;
import static org.bytedeco.opencv.global.opencv_core.cvGet2D;
import static org.bytedeco.opencv.global.opencv_imgproc.cvResize;

@Component
public class ImageUtils {

    public float[][][][] toMatriz(MultipartFile uploadedImage) throws IOException {
        int height = 48;
        int width = 48;

        float[][][][] result = new float[1][height][width][1];
        File imagem = toFile(uploadedImage);
        BufferedImage buffer = ImageIO.read(imagem);
        IplImage original = toIplImage(buffer);
        IplImage resizedImg = IplImage.create(width, height, original.depth(), original.nChannels());
        cvResize(original, resizedImg);
        result[0] = getRGB2Gray(resizedImg);
        imagem.delete();
        return result;
    }

    private float[][][] getRGB2Gray(IplImage image) {
        float[][][] result = new float[image.height()][image.width()][1];
        for (int i = 0; i < image.height(); i++) {
            for (int j = 0; j < image.width(); j++) {
                CvScalar pixel = cvGet2D(image, i, j);
                float r = (float) pixel.val(2);
                float g = (float) pixel.val(1);
                float b = (float) pixel.val(0);
                result[i][j][0] = (r + b + g) / 3;
            }
        }
        return result;
    }

    private File toFile(MultipartFile file) throws IOException {
        File convFile = new File(file.getOriginalFilename());
        convFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(convFile);
        fos.write(file.getBytes());
        fos.close();
        return convFile;
    }
}
