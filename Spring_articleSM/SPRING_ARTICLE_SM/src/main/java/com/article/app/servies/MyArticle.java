package com.article.app.servies;

import java.util.ArrayList;

import com.article.app.entities.ArticleDTO;



public interface MyArticle {
	
	public ArrayList<ArticleDTO> listAll();
	public boolean insert(ArticleDTO articleDTO);
	public boolean delete(int id);
	public boolean update(ArticleDTO articleDTO);
	public ArticleDTO list(int id);
	public ArrayList<ArticleDTO> view(int id);
	public int getMaxID();
	public ArrayList<ArticleDTO> search(String word);
	public int count();
}
