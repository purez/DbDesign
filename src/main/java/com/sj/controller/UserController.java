package com.sj.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sj.po.Customer;
import com.sj.po.Digital;
import com.sj.po.Digitalview;
import com.sj.po.Goods;
import com.sj.po.Record;
import com.sj.po.Supplier;
import com.sj.po.User;
import com.sj.service.CustomerService;
import com.sj.service.DigitalService;
import com.sj.service.DigitalviewService;
import com.sj.service.GoodsService;
import com.sj.service.RecordService;
import com.sj.service.SupplierService;
import com.sj.service.UserService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("")
public class UserController {
	
	@Autowired
	UserService userService;
	@Autowired
	GoodsService goodsService;
	@Autowired
	RecordService recordService;
	@Autowired
	DigitalService digitalService;
	@Autowired
	DigitalviewService digitalviewService;
	@Autowired
	CustomerService customerService;
	@Autowired
	SupplierService supplierService;


	@RequestMapping("addUsr")
	public ModelAndView addUser(User usr){
       userService.insert(usr);
	   ModelAndView mav=new ModelAndView("success");
	   
	   return mav;
	}	

	@RequestMapping("addGoods")
	public String addGoods(Goods goods){
		System.out.println(goods.getJprice());
         goodsService.add(goods);
         return "goodsAdmin";
         
	
	}	
	@RequestMapping("updateUsr")
	public String updateUsr(User u){
		//System.out.println(goods.getJprice());
		System.out.println(u.getUid());
         userService.update(u);
         return "success";
         
	
	}	
	@RequestMapping("updateGd")
	public String updateGd(Goods g){
		//System.out.println(goods.getJprice());
        goodsService.updateG(g);
         return "success";
        
	}	
	@RequestMapping("updateCs")
	public String updateCs(Customer c){
		//System.out.println(goods.getJprice());
        customerService.update(c);
         return "success";
        
	}	
	@RequestMapping("addDigital")
	public String addDigital(Digital digital){
	
		digitalService.add(digital);		  
		Goods gd=goodsService.get(digital.getGid());
		
		gd.setNumber(gd.getNumber()-digital.getNumber());
		System.out.println(gd.getNumber());
		goodsService.update(gd.getNumber(), gd.getGid());
         return "index";
         
	
	}	
	@RequestMapping("addCustomer")
	public String addCustomer(Customer customer){
	      System.out.println(customer.getCid());
		customerService.add(customer);
         return "bossAdmin";
         
	
	}
	@RequestMapping("addSupplier")
	public String addSupplier(Supplier supplier){
	      System.out.println(supplier.getSid());
	      supplierService.add(supplier);
         return "buyAdmin";
         
	
	}
	@RequestMapping("addRecord")
	public void addRecord(HttpServletRequest request,HttpServletResponse response,Record record){
		List<Customer> cs=customerService.list();
		Random random = new Random();
		 int n = random.nextInt(cs.size());
	      System.out.println(cs.get(n).getCid());
          System.out.println(request.getParameter("rid"));    
          record.setRid(request.getParameter("rid"));
          record.setDatetime(request.getParameter("datetime"));
          record.setCid(cs.get(n).getCid());
          record.setAllmoney(Double.parseDouble(request.getParameter("allmoney")));
          System.out.println(request.getParameter("rid")+request.getParameter("datetime")+request.getParameter("cid")+Double.parseDouble(request.getParameter("allmoney")));
         recordService.add(record);
		//recordService.add(record);
	
	
	}
	@RequestMapping("towhere")
	public String towhere( HttpServletRequest request,HttpServletResponse response) throws IOException{
		String url=request.getParameter("tourl");
		return url;		
	 
	}	
	@RequestMapping("loginUsr")
	public String loginusr(String username,String password,Model model,HttpSession session){
		
	       User user=userService.check(username, password);
	      
	       if(user!=null) {
	    	   session.setAttribute("usrName", username);
	    	   return "reserveHandle";
	    	   
	       }
	     else {
	    	
	   	    return "redirect:/login.jsp";
			
		}   
	 
	}
	
	@RequestMapping("listUser")
	public void listUser( HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("listUser");
		List<User> goods=userService.list();
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",goods);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		response.getWriter().write(jsonObject.toString());
	}
	
	@RequestMapping("listCustomer")
	public void listCustomer( HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("listCustomer");
		List<Customer> goods=customerService.list();
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",goods);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		response.getWriter().write(jsonObject.toString());
	}
	
	@RequestMapping("deleteUser")
	 @ResponseBody
	public void deleteUser( @RequestParam ("uid") String uid) throws IOException{
		System.out.println(uid);
		userService.delete(uid);
		 String msg="sucess";
		 System.out.println(msg);
	
		
	}
	@RequestMapping("deleteSupplier")
	 @ResponseBody
	public void deleteSupplier( @RequestParam ("sid") String sid) throws IOException{
		System.out.println(sid);
       supplierService.delete(sid);
		 String msg="sucess";
		 System.out.println(msg);
	
		
	}
	@RequestMapping("deleteGoods")
	 @ResponseBody
	public void deleteGoods( @RequestParam ("gid") String gid) throws IOException{
		System.out.println(gid);
		goodsService.delete(gid);
		 String msg="sucess";
		 System.out.println(msg);
	
	
	}
	@RequestMapping("deleteRecord")
	 @ResponseBody
	public void deleteRecord( @RequestParam ("rid") String rid) throws IOException{
		System.out.println(rid);
		recordService.delete(rid);
		 String msg="sucess";
		 System.out.println(msg);
	
	
	}
	@RequestMapping("deleteCustomer")
	 @ResponseBody
	public void Customer( @RequestParam ("cid") String cid) throws IOException{
		System.out.println(cid);
		customerService.delete(cid);
		 String msg="sucess";
		 System.out.println(msg);
	
			
	 
	}
	
	@RequestMapping("listGoods")
	public void listGoods( HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("listGoods");
		List<Goods> goods=goodsService.list();
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",goods);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		response.getWriter().write(jsonObject.toString());
	}
	@RequestMapping("listSupplier")
	public void listSupplier( HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("listSupplier");
		List<Supplier> supplier=supplierService.list();
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",supplier);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		response.getWriter().write(jsonObject.toString());
	}
	@RequestMapping("listRecord")
	public void listRecord( HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("listRecord");
		List<Record> record=recordService.list();
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",record);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		response.getWriter().write(jsonObject.toString());
	}
	@RequestMapping("showUser")
	@ResponseBody
	public ModelAndView showUser(@RequestParam ("uid") String uid){
		User u= userService.get(uid);
		System.out.println(u);
		ModelAndView mav = new ModelAndView("userEdit");
		mav.addObject("u", u);
		return mav;
	}
	@RequestMapping("showCustomer")
	@ResponseBody
	public ModelAndView showCustomer(@RequestParam ("cid") String cid){
		Customer c= customerService.get(cid);
		System.out.println(c);
		ModelAndView mav = new ModelAndView("customerEdit");
		mav.addObject("c", c);
		return mav;
	}
	
	@RequestMapping("showSupplier")
	@ResponseBody
	public ModelAndView showSupplier(@RequestParam ("sid") String sid){
		Supplier s= supplierService.get(sid);
		System.out.println(s);
		ModelAndView mav = new ModelAndView("supplierEdit");
		mav.addObject("s", s);
		return mav;
	}
	
	@RequestMapping("showGoods")
	@ResponseBody
	public ModelAndView showGoods(@RequestParam ("gid") String gid){
		Goods g= goodsService.get(gid);
		ModelAndView mav = new ModelAndView("goodsEdit");
		mav.addObject("g", g);
		return mav;
	}
	@RequestMapping("showDigital")
	@ResponseBody
	public void showDigital( @RequestParam ("rid")String rid,HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException{
		System.out.println("id:"+rid);
		List<Digitalview> digitalview=digitalviewService.listById(rid);
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",digitalview);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		session.setAttribute("rid", rid);
		response.getWriter().write(jsonObject.toString());
	}
	
	@RequestMapping("Digital")
	public void Digital( HttpServletRequest request,HttpServletResponse response) throws IOException{
		String rid=request.getParameter("rid");
		System.out.println("request.getParameter:"+request.getParameter("rid"));
		List<Digitalview> dig=digitalviewService.listById(rid);
		JSONObject jsonObject = new JSONObject();  
		jsonObject.put("data",dig);
		response.setContentType("text/xml; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(jsonObject.toString());
		response.getWriter().write(jsonObject.toString());			 
	}
	
	@RequestMapping("updateRecord")
	 @ResponseBody
	public void updateRecord( @RequestParam ("rid") String rid) throws IOException{
	//	 Record rd= recordService.get(rid);
		 Double all=0.0;
		 List<Digitalview> dvs=digitalviewService.listById(rid);
		  for(int i=0;i<dvs.size();i++){		        
		        all=all+Double.parseDouble(dvs.get(i).getAll());
		    }
		recordService.update(all, rid);
		 String msg="sucess";
		 System.out.println(msg);
	
		
	}
	@RequestMapping("list")
	public void list(HttpServletResponse response) throws IOException{
		System.out.println("商品展示");
	   	   List<Goods> gd=goodsService.list(); 
	   		response.setContentType("text/xml; charset=utf-8");
			response.setCharacterEncoding("utf-8");
	   	  JSONArray listArray=JSONArray.fromObject(gd);
	   	  System.out.println(listArray.toString());
		response.getWriter().print(listArray.toString());
			
	 
	}
	@RequestMapping("list2")
	public void list2(HttpServletResponse response) throws IOException{
		System.out.println("商品展示2");
	   	   List<Supplier> sp=supplierService.list(); 
	   		response.setContentType("text/xml; charset=utf-8");
			response.setCharacterEncoding("utf-8");
	   	  JSONArray listArray=JSONArray.fromObject(sp);
	   	  System.out.println(listArray.toString());
		response.getWriter().print(listArray.toString());
			
	 
	}
	@RequestMapping("list3")
	public void list3(HttpServletResponse response) throws IOException{
		System.out.println("商品展示3");
	   	   List<Customer> cs=customerService.list(); 
	   		response.setContentType("text/xml; charset=utf-8");
			response.setCharacterEncoding("utf-8");
	   	  JSONArray listArray=JSONArray.fromObject(cs);
	   	  System.out.println(listArray.toString());
		response.getWriter().print(listArray.toString());
			
	 
	}
	
}
