package com.trusrbazaar.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.trusrbazaar.model.Vendor;

public interface VendorRepository extends JpaRepository<Vendor, Long> {
    Vendor findByEmail(String email);
}
