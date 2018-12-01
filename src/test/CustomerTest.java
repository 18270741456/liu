package test;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

import domain.User;


public class CustomerTest {
	@Test
	public void insertTest() {
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		User c=new User();
		c.setName("tom");
		c.setPassword("123");
		c.setSex("男");
		c.setPhone("123456");
		c.setCity("sfadsf");
		
		
		session.save(c);
		t.commit();
		session.close();
		sessionFactory.close();
		
	}
}
