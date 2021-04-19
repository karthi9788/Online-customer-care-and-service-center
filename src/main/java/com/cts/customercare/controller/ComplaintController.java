package com.cts.customercare.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.customercare.exception.CustomerCareException;
import com.cts.customercare.model.Complaint;
import com.cts.customercare.model.User;
import com.cts.customercare.service.CategoryService;
import com.cts.customercare.service.ComplaintService;
import com.cts.customercare.service.UserService;

@Controller
public class ComplaintController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	ComplaintService complaintService;

	@Autowired
	UserService userService;

	@ModelAttribute("statusList")
	public List<String> statusList() {

		List<String> statusList = new ArrayList<>();
		statusList.add("Select Status");
		statusList.add("can be open");
		statusList.add("work in progress");
		statusList.add("closed");
		statusList.add("reopen");
		return statusList;
	}

	@RequestMapping(value = "/assignTeam/{id}", method = RequestMethod.POST)
	public String assignTeam(@PathVariable(value = "id") int id, @ModelAttribute("complaint") Complaint complaint,
			ModelMap model) throws CustomerCareException {

		complaintService.assignTeam(complaint, id);
		return "redirect:/adminhome";

	}

	@RequestMapping("/viewComplaint/{id}")
	public String complaintAssign(@PathVariable(value = "id") int id, ModelMap model) throws CustomerCareException {

		Complaint complaint = complaintService.findComplaintById(id);
		int userId = complaint.getUserId();
		User user = userService.findUserById(userId);

		model.put("user", user);
		model.put("complaint", complaint);
		return "viewComplaint";
	}

	@RequestMapping("/complaintStatus")
	public String complaintStatus(@ModelAttribute("complaint") Complaint complaint, ModelMap model) {
		
		List<Complaint> lst1 = new ArrayList<>();
		lst1 = complaintService.getComplaintStatus();
		
		model.put("complaintList", lst1);
		return "complaintStatus";
	}

	@RequestMapping("/saveComplaintStatus/{id}")
	public String saveComplaintStatus(@PathVariable(value = "id") int id,
			@ModelAttribute("complaint") Complaint complaint, ModelMap model) throws CustomerCareException {
		
		complaintService.saveComplaintStatus(complaint, id);
		return "redirect:/complaintStatus";

	}

	@RequestMapping("/viewComplaintStatus/{id}")
	public String changeStatusForm(@PathVariable(value = "id") int id, @ModelAttribute("complaint") Complaint complaint,
			ModelMap model) throws CustomerCareException {

		Complaint complaint1 = complaintService.findComplaintById(id);
		int userId = complaint1.getUserId();
		User user = userService.findUserById(userId);

		model.put("user", user);
		model.put("complaint", complaint1);
		return "viewComplaintStatus";
	}

	@RequestMapping(value = "/assignTeamByAnalyst/{id}", method = RequestMethod.POST)
	public String assignTeamByAnalyst(@PathVariable(value = "id") int id,
			@ModelAttribute("complaint") Complaint complaint, ModelMap model) throws CustomerCareException {

		complaintService.assignTeamByAnalyst(complaint, id);
		return "redirect:/analystHome";
	}

	
	@RequestMapping("/viewComplaintForAnalyst/{id}")
	public String viewComplaintForAnalyst(@PathVariable(value = "id") int id, ModelMap model) throws CustomerCareException {

		Complaint complaint = complaintService.findComplaintById(id);
		int userId = complaint.getUserId();
		User user = userService.findUserById(userId);
		
		model.put("user", user);
		model.put("complaint", complaint);
		return "viewComplaintForAnalyst";
	}

}