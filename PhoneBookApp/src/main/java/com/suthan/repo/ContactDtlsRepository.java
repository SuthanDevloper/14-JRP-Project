package com.suthan.repo;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.suthan.dto.Contact;


public interface ContactDtlsRepository extends JpaRepository<Contact, Integer> {

	 //findById()void;
	

}
