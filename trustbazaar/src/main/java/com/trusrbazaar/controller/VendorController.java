package com.trusrbazaar.controller;

import com.trusrbazaar.model.Vendor;
import com.trusrbazaar.service.VendorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/vendor")
public class VendorController {

    @Autowired
    private VendorService vendorService;

    
    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("vendor", new Vendor());
        return "vendor/register";
    }

    
    @PostMapping("/register")
    public String registerVendor(@ModelAttribute Vendor vendor) {
        vendorService.saveVendor(vendor);
        return "redirect:/vendor/login";
    }

    
    @GetMapping("/login")
    public String showLoginForm() {
        return "vendor/login";
    }

    
    @PostMapping("/login")
    public String loginVendor(@RequestParam String email, @RequestParam String password, Model model) {
        Vendor vendor = vendorService.findByEmail(email);
       
        if (vendor != null && vendor.getPassword().equals(password)) {
            model.addAttribute("vendor", vendor);
            return "vendor/dashboard";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "vendor/login";
        }
    }
}