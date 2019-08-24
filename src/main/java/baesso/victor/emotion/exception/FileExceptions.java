package baesso.victor.emotion.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@ControllerAdvice
public class FileExceptions {

    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public ModelAndView imagemMuitoGrande(MaxUploadSizeExceededException exc, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.getModel().put("message", "O tamanho máximo da imagem deve ser 3MB.");
        return modelAndView;
    }
}
