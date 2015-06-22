package org.top.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import org.top.bean.User;

public class loginListener implements HttpSessionAttributeListener {

	public static List<User> list = new ArrayList<User>();

	// ��Ӽ���
	public void attributeAdded(HttpSessionBindingEvent arg) {
		// ����user
		if (arg.getName().equals("user")) {
			User user = (User)arg.getValue();
			list.add(user);
		}
	}

	// �Ƴ�����
	public void attributeRemoved(HttpSessionBindingEvent arg) {
		try {
			int n = 0;
			User user = (User) arg.getValue();
			for (int i = 0; i < list.size(); i++) {
				User user2 = list.get(i);
				if (user.getUid().equals(user2.getUid())) {
					n = i;
					break;
				}
			}
			list.remove(n);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ���Ǽ���
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
	}
}