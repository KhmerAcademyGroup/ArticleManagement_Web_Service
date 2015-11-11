package com.article.app.servies;

import java.util.ArrayList;

import com.article.app.entities.CategoryDTO;



public interface MyCategory {
	public ArrayList<CategoryDTO> listAll();
	public boolean insert(CategoryDTO categoryDTO);
	public boolean delete(int id);
	public boolean update(CategoryDTO categoryDTO);
	public CategoryDTO list(int id);
	public ArrayList<CategoryDTO> view(int id);
	public int getMaxID();
	public ArrayList<CategoryDTO> search(String word);
	public int count();
}
