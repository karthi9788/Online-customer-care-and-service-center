package com.cts.customercare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.customercare.exception.CustomerCareException;
import com.cts.customercare.model.Category;
import com.cts.customercare.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String showCategories(ModelMap model) {

		model.put("categoryList", categoryService.findAllCategories());
		return "categorylist";
	}

	@RequestMapping(value = "/updateCategory/{id}")
	public String updateCategories(@PathVariable(value = "id") int id, @ModelAttribute("command") Category category,
			ModelMap model) throws CustomerCareException  {

		Category category1 = categoryService.findCategoryById(id);
		model.put("category", category1);
		return "updatecategory";

	}

	@RequestMapping(value = "/editCategory/{id}", method = RequestMethod.POST)
	public String updateCategory(@PathVariable(value = "id") int id, @ModelAttribute("category") Category category,
			ModelMap model) throws CustomerCareException  {

		Category category2 = categoryService.findCategoryById(id);
		category2.setCategoryName(category.getCategoryName());
		category2.setDescription(category.getDescription());
		categoryService.saveCategory(category2);
		return "redirect:/categories";
	}

	@RequestMapping(value = "/addCategory")
	public String addCategoryForm(@ModelAttribute("command") Category category) {

		return "addcategory";
	}

	@RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute("category") Category category) {

		categoryService.saveCategory(category);
		return "redirect:/categories";
	}

	@RequestMapping("/deleteCategory/{id}")
	public String deleteCategories(@PathVariable(value = "id") int id) {

		categoryService.deleteCategory(id);
		return "redirect:/categories";
	}

}
