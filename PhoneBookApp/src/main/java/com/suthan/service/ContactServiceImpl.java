package com.suthan.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suthan.dto.Contact;

import com.suthan.repo.ContactDtlsRepository;

@Service
public class ContactServiceImpl implements ContactService {
	
	@Autowired
	private ContactDtlsRepository contactDtlsRepo;

	
		

	@Override
	//GET from Entity class to POJO class 
	public List<Contact> getAllContacts() {
		
		
		return contactDtlsRepo.findAll();
	}

	@Override
	public Contact getContactById(Integer cid) {
		Optional<Contact> findById= contactDtlsRepo.findById(cid);
		
		if(findById.isPresent()){
			Contact entity=findById.get();
		
		}
		return null;
	}
	

	@Override
	public boolean updateContact(Contact c) {
		
		return false;
	}

	@Override
	public boolean deleteContact(Integer cid) {
		contactDtlsRepo.deleteById(cid);
		return true;
	}


	@Override
	public Integer saveContact(Contact contact) {
		// TODO Auto-generated method stub
		return contactDtlsRepo.save(contact).getContactId();
	}

}
