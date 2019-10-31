package baesso.victor.emotion.controller;

import baesso.victor.emotion.service.AnalyzeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;

@Controller
public class UploadController {

    @Autowired
    private AnalyzeService serviceAnalise;

    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file, Model model) throws IOException {

            // Envia o objeto MultipartFile para o service, que retorna uma lista com as emoções
            model.addAttribute("emotions", serviceAnalise.analisa(file));
            model.addAttribute("image", Base64.getEncoder().encodeToString(file.getBytes()));

        return "result";
    }
}
