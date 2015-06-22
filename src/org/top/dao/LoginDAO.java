package org.top.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.top.bean.User;

public interface LoginDAO {
	// 验证登录信息
	public boolean login(User user);
	// 查找用户是否存在
	public boolean getUser(User user);
	// 注册新用户
	public boolean register(User user);
	/*
	//插入留言
	public boolean insertMessage(Message message);
	//获取一条留言记录
	public Message getOneMessage(int id);
	//回复留言
	public boolean repeatMessage(Message message);
	//删除留言 
	public boolean deleteMessage(int id);
	//更新留言
	public boolean updataMessage(Message message);
	//获取全部记录数
	public int getAllCount();
	//获取全部记录信息
	public HashMap getAllMessage(int page_count,int row);
	//获取模糊查询全部记录数
	public int getByLikeCount(String keyWord);
	//获取模糊查询相关记录信息
	public List selectByLike(String str,int page_count,int row);
	*/
}
