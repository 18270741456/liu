package Dao;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import domain.Goods;

public class CartDao {
		Session session=null;
		
	public Goods getIDgoods(Integer ID){
		   Goods goods = null;
		   try {
			   Configuration config=new Configuration().configure();
				SessionFactory sessionFactory=config.buildSessionFactory();
				session=sessionFactory.openSession();
				Transaction t=session.beginTransaction();
				Criteria criteria=session.createCriteria(Goods.class);
				criteria.add(Restrictions.eq("ID", ID));
				
			  /* String hql = "from Goods where ID=?";
			   Query query = session.createQuery(hql);
			   query.setParameter(0, ID);
		       goods = (Goods) query.uniqueResult();*/
				goods=(Goods) criteria.uniqueResult();
		      t.commit();
		   }catch (Exception e) {
			   e.printStackTrace();			      
		   } finally {
		       session.close();
		   }		   
		   return goods;		   
	   }
	
	
	/*@Test
	public void test() {
		Integer ID=1;
	Goods goods=getIDgoods(ID);
	System.out.println(goods);
	}*/
	
	public List<Goods> allgoods(){
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
	    List<Goods> goods = null;
		try {
		
	   String hql = "from Goods";
	   Query query=session.createQuery(hql);
	   goods=query.list();
	   t.commit();
		}catch(Exception e) {
			t.rollback();
		}
		finally {
		       session.close();
		   }
	   return goods;
	}
	  
	
	
}

