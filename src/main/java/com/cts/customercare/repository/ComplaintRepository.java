package com.cts.customercare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.customercare.model.Complaint;

@Repository
public interface ComplaintRepository extends JpaRepository<Complaint, Integer> {

}