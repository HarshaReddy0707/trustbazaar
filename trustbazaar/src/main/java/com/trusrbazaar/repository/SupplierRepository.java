package com.trusrbazaar.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.trusrbazaar.model.Supplier;

public interface SupplierRepository extends JpaRepository<Supplier, Long> {
    Supplier findByEmail(String email);
}
