package com.bkybk.dao;

import java.util.List;

import com.bkybk.model.Ucategory;

public interface ContentMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(Ucategory record);

	int insertSelective(Ucategory record);

	Ucategory selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(Ucategory record);

	int updateByPrimaryKey(Ucategory record);

	List<Ucategory> getAll();
}