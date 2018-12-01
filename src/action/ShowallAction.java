package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Dao.CartDao;
import Dao.UserDao;
import domain.Goods;
import domain.User;

public class ShowallAction extends ActionSupport implements ModelDriven<User> {
	
	private User user;
	 private UserDao userDao=new UserDao();
	    ActionContext con=ActionContext.getContext();//
		public User getModel() {
			// TODO Auto-generated method stub
			return user;
		}
		
		public String execute() throws Exception {	
			System.out.println("------------------用户信息-----------------------------");
			List<User>  user= userDao.query1();        
			con.getSession().put("user", user);
			
			return SUCCESS;
		}

	
	
}
