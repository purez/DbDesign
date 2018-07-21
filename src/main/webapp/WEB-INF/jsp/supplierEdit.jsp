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
<center>
<div style="width:400px;">
     <form class="layui-form" action="updateSupplier" mehod="post">
			
				 <div class="layui-form-item">
			
				    <label class="layui-form-label" >供应商名:</label>
			
			 
					    <div class="layui-input-block">
					      <input type="text" name="sname"  value="${s.sname}" required  autocomplete="off" class="layui-input">
					       <input type="hidden" value="${s.sid}"  name="sid" autocomplete="off" class="layui-input">
			  
				  </div>
				 </div>
			  
			  <div class="layui-form-item">
			    <label class="layui-form-label">负责人:</label>
			    <div class="layui-input-inline">
			      <input type="text" name="dealer" value="${s.dealer}" autocomplete="off" class="layui-input">
			    </div>
			  </div>
			    <div class="layui-form-item">
			    <label class="layui-form-label">联系方式:</label>
			    <div class="layui-input-block">
			      <input type="text" name="phone" required  value="${s.phone}" autocomplete="off" class="layui-input">
			    </div>
			  </div>
			
			  <div class="layui-form-item">
			    <div class="layui-input-block">
			      <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
			    </div>
			  </div>
 </form>
    
    
    </div>
   
 
 </center>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  
});
layui.use('element', function(){
	  var element = layui.element;
	  
	  //…
	});
</script>

</body>
</html>