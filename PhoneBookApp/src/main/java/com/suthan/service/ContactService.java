package com.suthan.service;

import java.util.List;

import com.suthan.dto.Contact;


public interface ContactService {
	
	public Integer saveContact( Contact contact);
	
	List<Contact> getAllContacts();
	
	Contact getContactById(Integer cid);
	 
	 boolean updateContact(Contact c);
	 
	 boolean deleteContact(Integer cid);
}
