package com.bkybk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bkybk.dao.UcategoryMapper;
import com.bkybk.model.Ucategory;
import com.bkybk.service.CategoryServiceI;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryServiceI {

	private UcategoryMapper categoryMapper;

	public List<Ucategory> getAll() {
		// TODO Auto-generated method stub
		return categoryMapper.getAll();
	}

	public UcategoryMapper getCategoryMapper() {
		return categoryMapper;
	}

	@Autowired
	public void setCategoryMapper(UcategoryMapper categoryMapper) {
		this.categoryMapper = categoryMapper;
	}

}
