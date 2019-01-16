package com.chinasoft.servlet.register;

import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasoft.dao.impl.CapitalDaoImpl;
import com.chinasoft.dao.impl.MoneyImpl;
import com.chinasoft.entity.Capital;
import com.chinasoft.entity.Money;
import com.chinasoft.entity.User;
import com.chinasoft.service.IUserServices;
import com.chinasoft.service.impl.UserServicesImpl;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	

	private IUserServices usersivice = new UserServicesImpl();
	private static final long serialVersionUID = 1L;

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	  String account = req.getParameter("account");
	  String tel = req.getParameter("tel");
	  String pass = req.getParameter("pass");
	  
	  User user = new User();
	  user.setAccount(account);
	  user.setTel(tel);
	  user.setPass(pass);
	 
	  System.out.println(user);
	  
	  int saveUser = usersivice.saveUser(user);
	  
	  System.out.println(saveUser);
	  
	  if (saveUser>0) {
		  	CapitalDaoImpl cdi = new CapitalDaoImpl();
		  	Capital ca = new Capital();
		  	ca.setC_account(account);
		  	ca.setC_balance(0);
		  	ca.setC_icinvest(0);
		  	ca.setC_pdincome(0);
		  	ca.setC_reimburse(0);
		  	ca.setC_sploan(0);
		  	ca.setC_ttinvest(0);
		  	ca.setC_ttloan(0);
		  	cdi.addCapital(ca);

			MoneyImpl mi = new MoneyImpl();
			Money money = new Money();
			money.setAccount(account);
			money.setMoney(0);
			
			mi.addUser(money);
			
			
		   resp.sendRedirect("/ptwoploan/client/main.jsp");
		  
	}else{
		
		 resp.sendRedirect("/ptwoploan/client/register.jsp");
	}
	  
  }

}
