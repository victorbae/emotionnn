package baesso.victor.emotion.controller;

import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;

@Controller
public class UploadController {

    @Autowired
    private AnalyzeService recognizer;

    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, ModelMap model) throws IOException {
        model.addAttribute("emotions", recognizer.analyze());
        model.addAttribute("image", Base64.getEncoder().encodeToString(file.getBytes()));
        return "result";
    }
}
