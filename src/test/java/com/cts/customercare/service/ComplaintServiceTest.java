package com.cts.customercare.service;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.cts.customercare.model.Complaint;

@SpringBootTest
public class ComplaintServiceTest {
	@Autowired
	ComplaintService complaintService;

	@Before
	public void setUp() throws Exception {
		complaintService=new ComplaintService();
	}

	@Test
	public void testValidComplaintList() {
		Complaint complaint=new Complaint();
		complaint.setUserId(1);
		
		complaint.setComplaintStatement("complaint");
		complaintService.saveComplaint(complaint);
		List<Complaint> lst=complaintService.findallcomplaints();
		
		Complaint complaint1=lst.stream().filter(c->c.getComplaintStatement().equals("complaint")).findFirst().get();
	}
	
	@Test
	public void testInValidComplaintList() {
	}


}