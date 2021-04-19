package com.cts.customercare.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.customercare.exception.CustomerCareException;
import com.cts.customercare.model.Category;
import com.cts.customercare.repository.CategoryRepository;

@Service
public class CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	public List<Category> findAllCategories() {

		return categoryRepository.findAll();
	}

	public Category findCategoryById(int id) throws CustomerCareException  {

		Optional<Category> optional = categoryRepository.findById(id);
		Category category = null;
		if (optional.isPresent()) {
			category = optional.get();
		} else

		{
			throw new CustomerCareException("Not Found For Category Id: " + id);
		}
		return category;
	}

	public void saveCategory(Category category) {

		categoryRepository.save(category);
	}

	public void deleteCategory(int id) {

		categoryRepository.deleteById(id);
	}

}
