package br.com.aweb.sistema_vendas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    // Página inicial após o login
    @GetMapping("/")
    public String home() {
        return "home";
    }

}
