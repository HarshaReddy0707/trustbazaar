package com.trusrbazaar.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.trusrbazaar.model.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findBySupplierId(Long supplierId);
}
