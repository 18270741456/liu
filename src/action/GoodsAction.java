package action;

import java.util.List;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import Dao.GoodsDao;
import domain.Goods;

public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {
    private Goods goods = new Goods();
    private GoodsDao goodsdao = new GoodsDao();
    ActionContext con=ActionContext.getContext();//
	public Goods getModel() {
		// TODO Auto-generated method stub
		return goods;
	}
	
	public String execute() throws Exception {	
		System.out.println("------------------到商品頁面-----------------------------");
		List<Goods>  goods= goodsdao.allgoods();        
		con.getSession().put("goods", goods);
		return SUCCESS;
	}


}
