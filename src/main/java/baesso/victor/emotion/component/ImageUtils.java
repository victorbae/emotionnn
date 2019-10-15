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

    private final int height = 48;
    private final int width = 48;
    private final float mean = 117f;
    private final float scale = 1f;

    public float[][][][] loadAndNormalizeImages(File photo) throws IOException {
        float[][][][] result = new float[1][height][width][1];

        BufferedImage imagemBuff = ImageIO.read(photo);

        IplImage origImg = toIplImage(imagemBuff);
        IplImage resizedImg = IplImage.create(width, height, origImg.depth(), origImg.nChannels());
        cvResize(origImg, resizedImg);

        result[0] = getRGB2Gray(resizedImg);
        return result;
    }

    private float[][][] getRGB2Gray(IplImage image) {
        float[][][] result = new float[image.height()][image.width()][1];
        for (int i = 0; i < image.height(); i++) {
            for (int j = 0; j < image.width(); j++) {
                CvScalar pixel = cvGet2D(image, i, j);
                float r = (float) (pixel.val(2) - mean) / scale; //R
                float g = (float) (pixel.val(1) - mean) / scale; //G
                float b = (float) (pixel.val(0) - mean) / scale; //B
                result[i][j][0] = (r + b + g) / 3;
            }
        }
        return result;
    }

    public static File toFile(MultipartFile file) throws IOException {
        File convFile = new File(file.getOriginalFilename());
        convFile.createNewFile();
        FileOutputStream fos = new FileOutputStream(convFile);
        fos.write(file.getBytes());
        fos.close();
        return convFile;
    }
}
