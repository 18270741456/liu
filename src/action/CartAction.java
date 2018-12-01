package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Dao.CartDao;
import Dao.GoodsDao;
import domain.Goods;

public class CartAction extends ActionSupport implements ModelDriven<Goods> {
	private Goods goods;
	 private CartDao cartdao = new CartDao();
	    ActionContext con=ActionContext.getContext();//
		public Goods getModel() {
			// TODO Auto-generated method stub
			return goods;
		}
		
		public String execute() throws Exception {	
			System.out.println("------------------详情页面-----------------------------");
			HttpServletRequest request=ServletActionContext.getRequest();
			Integer pid=Integer.valueOf(request.getParameter("pid"));
			CartDao dao=new CartDao();
			Goods goods=(Goods)dao.getIDgoods(pid);
			con.getSession().put("goods", goods);
			return SUCCESS;
		}


	

}
