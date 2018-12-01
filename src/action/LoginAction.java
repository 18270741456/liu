package action;

import java.util.Iterator;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import domain.User;

public class LoginAction extends ActionSupport implements ModelDriven<User>{
	private static final long serialVersionUID=1L;
	private String message="error";
	private List list;
	private User user=new User();
	
	public User getModel() {
		return user;
	}
	
	public String login()throws Exception{
		
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		 ActionContext con=ActionContext.getContext();
		String str=null;
		String username=user.getName();
		String password=user.getPassword();
		Query queryObject = session.createQuery("from User where name=:name and password=:password ");
        System.out.println("pass1");
        queryObject.setParameter("name", username);
        queryObject.setParameter("password",password);
        List<User> list=queryObject.list();
        session.close();
        sessionFactory.close();
        if(list.size()>0&&list!=null) {
        	con.getSession().put("user", user);
        	return "success";
        	
        }else {
        	System.out.println("登录失败");
        	return"error";
        }
          
	
	
	}
}
