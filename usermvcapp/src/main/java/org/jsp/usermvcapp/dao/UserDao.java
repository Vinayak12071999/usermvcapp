//UserDao
package org.jsp.usermvcapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.jsp.usermvcapp.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
@Autowired	
EntityManager manager;

public User saveUser(User user) {
	EntityTransaction t =manager.getTransaction();
	manager.persist(user);
      t.begin();
	t.commit();
	return user;
}

public User updateveUser(User user) {
	EntityTransaction t=manager.getTransaction();
	manager.merge(user);	
	t.begin();
	t.commit();
	return user;
}

public User getUserById(int id) {
	return manager.find(User.class,id);
}

public boolean deleteUser(int id) 
{
	EntityTransaction t=manager.getTransaction();
	User u=manager.find(User.class,id);
	if(u!=null) {
		manager.remove(u);
		t.begin();
		t.commit();
		return true;
	}
    return false;
}

public List<User> findAllUsers() {
	Query q=manager.createQuery("select u from User u");
	return q.getResultList();
}

public User verifyUser(long phone,String password) {
	Query q =manager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
	q.setParameter(1,phone);
	q.setParameter(2,password);
	List<User> users=q.getResultList();
	if(users.size()>0)
		return users.get(0);
	return null;
}
}

