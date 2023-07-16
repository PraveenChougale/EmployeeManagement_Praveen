package dao;

import java.util.List;



import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import dto.User;



public class UserDao
{
	EntityManagerFactory e=Persistence.createEntityManagerFactory("dev");
	EntityManager m=e.createEntityManager();
	EntityTransaction t=m.getTransaction();
	
	public void save(User user)
	{
		t.begin();
		m.persist(user);
		t.commit();	
	}
	
	
	//for login while using id
	public User find(int id){
	List<User> users=	m.createQuery("SELECT X FROM User X where id=?1").setParameter(1, id).getResultList();
	if(users.isEmpty())
	{
		return  null;
	}else{
		return users.get(0);
		//it will give one object maximum so we write get(0)............bcz email is primarykey it will not allow duplicate email
	}
	}
	
	
	
	public void update(User user)
	{
				t.begin();
				m.merge(user);
				t.commit();
	}
	
	
	public List<User> fechaAll()
	{
		return m.createQuery("select e from User e",User.class).getResultList();				
	}
	
	
	public void delete(User user)
	{
		t.begin();
		m.remove(user);
		t.commit();
	}
	
	

	
}
