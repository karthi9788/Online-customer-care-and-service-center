package com.cts.customercare.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.cts.customercare.model.Category;

@SpringBootTest
public class CategoryServiceTest {

	@Autowired
	CategoryService categoryService;

	@Before
	public void setUp() throws Exception {
		categoryService=new CategoryService();
	}

	@Test
	public void testValidCategoryList() {
		Category category = new Category();
		category.setCategoryId(100);
		category.setCategoryName("course related issue");
		category.setDescription("related to course issues");
		categoryService.saveCategory(category);
		List<Category> lst = categoryService.findAllCategories();
		Category category1 = lst.stream().filter(c -> c.getCategoryName().equals("course related issue")).findFirst()
				.get();

		assertEquals(category, category1);
		assertTrue(lst.contains(category1));
	}

	@Test
	public void testValidCategory() throws Exception {

		Category category = new Category();
		category.setCategoryId(102);
		category.setCategoryName("course related issue");
		category.setDescription("related to course issues");
		categoryService.saveCategory(category);

		Category category1 = categoryService.findCategoryById(102);

		assertEquals(category, category1);
	}

	@Test
	public void testInValidCategory() throws Exception {

		Category category = new Category();
		category.setCategoryId(101);
		category.setCategoryName("course related issue");
		category.setDescription("related to course issues");
		categoryService.saveCategory(category);

		Category category1 = categoryService.findCategoryById(1001);

		assertNotEquals(category, category1);
	}

}
