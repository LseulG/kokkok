package com.kokkok.main.dao;

public interface MainDao {

	public int checkWish(String seq,String id);
	public int registerWish(String seq, String id);
	public int deleteWish(String seq, String id);
	public int countWish(String seq);
	public int addWish(String seq);
	public int minusWish(String seq);
}
