package test;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import domain.Messa;
import util.HibernateUtil;



public class MessaTest {
    
    
    Session session;
    Transaction tx; 

   
   /* 
    @Test
    public void getData(){
        Messa mes=(Messa)session.get(Messa.class, 1);
        System.out.println(mes);
    }*/
    
    
    /*
     * 增加
     */
    
    @Test
    public void addData(){
    	Messa mes=new Messa();
        mes.setEmail("132154");
        Configuration cfg=new Configuration().configure();
    
    //创建SessionFactory
        SessionFactory fa=cfg.buildSessionFactory();
    //加工Session
    Session se=fa.openSession();
    Transaction tx = se.beginTransaction();
    //保存
    se.save(mes);
    //事务提交
    tx.commit();
    se.close();
    
    System.out.println("Save ok!");
    
    
    }
     
    /*
     * 删除
     */
    @Test
    public void delData(){
        Session session=HibernateUtil.getSession();
        Messa mes=new Messa();
        mes.setID(3);
        Transaction tx=session.beginTransaction();
        session.delete(mes);
        tx.commit();
        HibernateUtil.CloseSession();
        System.out.println("del ok!");
    }
    
    /*
     * 修改
     */
    @Test
    public void updateData(){
        Session session=HibernateUtil.getSession();        
        Messa mes=(Messa)session.load(Messa.class,3);
        mes.setEmail("11111");
        Transaction tx=session.beginTransaction();
        session.update(mes);
        tx.commit();
        HibernateUtil.CloseSession();
        System.out.println("update ok!");
    }
    
    

    }
