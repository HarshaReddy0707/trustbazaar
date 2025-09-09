package com.trusrbazaar.service;

import com.trusrbazaar.model.Supplier;
import com.trusrbazaar.repository.SupplierRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupplierService {
    private final SupplierRepository repo;

    public SupplierService(SupplierRepository repo) {
        this.repo = repo;
    }

    public Supplier register(Supplier supplier) {
        
        return repo.save(supplier);
    }

    public Supplier login(String email, String password) {
        Supplier s = repo.findByEmail(email);
        
        if (s != null && s.getPassword().equals(password)) {
            return s;
        }
        return null;
    }

    public List<Supplier> findAll() {
        return repo.findAll();
    }
}