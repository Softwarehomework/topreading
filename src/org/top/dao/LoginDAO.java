package org.top.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.top.bean.User;

public interface LoginDAO {
	// ��֤��¼��Ϣ
	public boolean login(User user);
	// �����û��Ƿ����
	public boolean getUser(User user);
	// ע�����û�
	public boolean register(User user);
	/*
	//��������
	public boolean insertMessage(Message message);
	//��ȡһ�����Լ�¼
	public Message getOneMessage(int id);
	//�ظ�����
	public boolean repeatMessage(Message message);
	//ɾ������ 
	public boolean deleteMessage(int id);
	//��������
	public boolean updataMessage(Message message);
	//��ȡȫ����¼��
	public int getAllCount();
	//��ȡȫ����¼��Ϣ
	public HashMap getAllMessage(int page_count,int row);
	//��ȡģ����ѯȫ����¼��
	public int getByLikeCount(String keyWord);
	//��ȡģ����ѯ��ؼ�¼��Ϣ
	public List selectByLike(String str,int page_count,int row);
	*/
}
