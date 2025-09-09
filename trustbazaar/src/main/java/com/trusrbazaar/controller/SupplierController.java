package com.trusrbazaar.controller;

import com.trusrbazaar.model.Supplier;
import com.trusrbazaar.service.SupplierService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/supplier")
public class SupplierController {
    private final SupplierService service;

    public SupplierController(SupplierService service) {
        this.service = service;
    }

    @GetMapping("/register")
    public String showRegister() {
        return "supplier/register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute Supplier supplier) {
        service.register(supplier);
        return "redirect:/supplier/login";
    }

    @GetMapping("/login")
    public String showLogin() {
        return "supplier/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        Model model) {
        Supplier supplier = service.login(email, password);
        if (supplier != null) {
            model.addAttribute("supplier", supplier);
            return "supplier/dashboard";
        }
        model.addAttribute("error", "Invalid credentials!");
        return "supplier/login";
    }
}
