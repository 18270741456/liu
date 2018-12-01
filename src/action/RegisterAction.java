package action;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import domain.User;

public class RegisterAction extends ActionSupport implements ModelDriven<User> {
	private User user=new User();
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
public String register()throws Exception{
		
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		String str=null;
		String username=user.getName();
		String password=user.getPassword();
		Query queryObject = session.createQuery("from User where name=:name and password=:password ");
        System.out.println("pass1");
        queryObject.setParameter("name", username);
        queryObject.setParameter("password",password);
        List<User> list=queryObject.list();
        
        if(list.size()>0&&list!=null) {
        	return "error";
        }else {
        	
        	session.save(user);
        	session.close();
            sessionFactory.close();
        	return"success";
        }
          
	
	
	}
}
