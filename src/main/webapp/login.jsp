<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="layui/css/layui.css">
  <script src="layui/layui.js"></script>
  <style>
 body{
 margin:auto 0;
  background: url("pic/timg.jpg") no-repeat left top;
  background-size:100%;
  font-family: Arial, sans-serif white;
 }
  
 a{
 color:white;
 }
  </style>
</head>
    <body>
            <marquee><span style="font-weight: bolder;font-size: 40px;color: white;">商品销售管理系统</span></marquee>
    
        <div class="login-main" style="width:400px;border:1px solid #f2f2f2;margin-left:40%;margin-top:10%; opacity: 0.9;border-radius:10px;backgroud-color:">
    <div class="layui-elip" style="height:30px; font-size:18px;text-align:center;border-top-left-radius:10px;border-top-right-radius:10px"><i style="color:white">后台登录</i></div>
    <br>
    <form class="layui-form" action="loginUsr" id="fm">
      <div class="layui-form-item">
		
			    <label class="layui-form-label" ><i style="color:white">用户名:</i></label>
		 
				    <div class="layui-input-block">
				      <input type="text"  style="width:200px;" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
		  
			  </div>
			 </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label"><i style="color:white;size:14px;">密码:</i></label>
		    <div class="layui-input-inline">
		      <input type="password" style="width:200px;" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
		    </div>
		  </div>	   
		 		
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn layui-btn-primary layui-btn-radius " style="width:200px;" lay-submit lay-filter="Demo">登录</button>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button type="reset" style="width:200px;"  class="layui-btn layui-btn-primary layui-btn-radius ">重置</button>
		    </div>
		  </div>
		  


        <p style="text-align:center;"><a href="javascript:;"  onClick="register()" class="fl">立即注册</a>&emsp;&emsp;&emsp;<a href="javascript:;" class="fr">忘记密码？</a></p>
    </form>
</div>
<script src="layui/layui.js"></script>
<script type="text/javascript">

    layui.use(['form'], function () {
        var form = layui.form(), $ = layui.jquery;
    });
    
    function register(){
    	
    	 layer.open({  
 	        type: 2,  
 	        title: "注册",  
 	        area: ['430px', '500px'],  
 	        maxmin: false,  
 	        closeBtn: 1,  
 	        content: "register.jsp",
 	    });  
    	
    	
    }
</script>
    </body>
</html>