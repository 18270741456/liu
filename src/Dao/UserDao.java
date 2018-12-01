package Dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import domain.Goods;
import domain.User;

public class UserDao {
	 public static List<User> query1() {
		 Configuration config=new Configuration().configure();
			SessionFactory sessionFactory=config.buildSessionFactory();
		 	Session session=sessionFactory.openSession();
		 	Transaction t=session.beginTransaction();
	        List<User> user = null;
	        try {
	        String sql = "select * from user";
	        SQLQuery sqlQuery = session.createSQLQuery(sql);
	        
	        user=sqlQuery.list();
	        }catch(Exception e) {
				t.rollback();
			}
			finally {
			       session.close();
			   }
	        return user;
	    }
}
