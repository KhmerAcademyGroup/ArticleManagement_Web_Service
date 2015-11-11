package com.article.app.servies;

import java.util.ArrayList;

import com.article.app.entities.UserDTO;

public interface MyUser {
	public ArrayList<UserDTO> listAll();
	public boolean insert(UserDTO userDTO);
	public boolean delete(int id);
	public boolean update(UserDTO userDTO);
	public UserDTO list(int id);
	public ArrayList<UserDTO> view(int id);
	public int getMaxID();
	public ArrayList<UserDTO> search(String word);
	public int count();
}
