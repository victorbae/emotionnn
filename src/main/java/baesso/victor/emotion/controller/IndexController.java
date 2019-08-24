package baesso.victor.emotion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @GetMapping({"/", "/home", "/again"})
    public String index() { return "index"; }

    @GetMapping("sobre")
    public String sobre() {
        return "sobre";
    }

    @GetMapping("error")
    public String error() {
        return "error";
    }

}
