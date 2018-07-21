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
 
 }
  
  
  </style>
</head>
    <body>
        <div class="login-main">
    <form class="layui-form" action="addUsr" >
      <div class="layui-form-item">
		 
		    <div class="layui-input-inline">
		      <input  type="hidden" style="width:200px;" name="uid"  class="layui-input" id="uid">
		    </div>
		  </div>	   
		 		
      <div class="layui-form-item">
		
			    <label class="layui-form-label" >用户名:</label>
		 
				    <div class="layui-input-block">
				      <input  type="text"  style="width:200px;" name="uname" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
		  
			  </div>
			 </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label">密码:</label>
		    <div class="layui-input-inline">
		      <input type="password" style="width:200px;" name="pswd" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
		    </div>
		  </div>	 
		   <div class="layui-form-item">
		    <label class="layui-form-label">联系方式:</label>
		    <div class="layui-input-inline">
		      <input type="password" style="width:200px;" name="phone" required lay-verify="required" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
		    </div>
		  </div>  
		 		
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="Demo">注册</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>

    </form>
</div>
<script src="layui/layui.js"></script>
<script type="text/javascript">


    layui.use(['form'], function () {
        var form = layui.form(), $ = layui.jquery;
    });
    
    layui.use(['jquery', 'layer'], function(){ 
  	  var $ = layui.$ //重点处
  	  ,layer = layui.layer;

  	  var items = ['1','2','4','5','6','7','8','9'];
  		var item = items[Math.floor(Math.random()*items.length)];
  	  var Num=""; 
  	   for(var i=0;i<7;i++) 
  	   { 
  	   Num+=Math.floor(Math.random()*10); 
  	   } 
  	   $("#uid")[0].value=item+Num.toString();  
  	 //  $("#gid1")[0].value=item+Num.toString(); 
  	 //  $("#jid")[0].disabled=true;   
  });;
</script>
    </body>
</html>