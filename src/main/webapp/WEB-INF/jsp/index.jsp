<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>登录页面</title>
 <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>

  <link rel="stylesheet" href="layui/css/layui.css">
  <script src="layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">商品销售管理系统</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="pic/header.png" class="layui-nav-img">
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="login.jsp">退出系统</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;">事务处理</a>
          <dl class="layui-nav-child">
            <dd class="layui-this"><a href="towhere?tourl=reserveHandle">订单处理</a></dd>
            <dd><a href="towhere?tourl=jiezhongHandle">接种处理</a></dd>
          </dl>
        </li>
       <li class="layui-nav-item">
          <a href="javascript:;">信息管理</a>
          <dl class="layui-nav-child">
              <dd><a href="towhere?tourl=userAdmin">用户信息</a></dd>
            <dd><a href="towhere?tourl=jiezhongAdmin">商品信息</a></dd>
             <dd><a href="towhere?tourl=shouceAdmin">销售记录</a></dd>
            <dd><a href="towhere?tourl=bossAdmin">用户管理</a></dd>
          </dl>
        </li>

      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    
    	
    
    <table id="demo" lay-filter="test"></table>
    
    
    
    内容主体区域
    
    
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="../src/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
layui.use('table', function(){
	  var table = layui.table;
	  
	/*  //第一个实例
	  table.render({
	    elem: '#demo'
	    ,height: 315
	    ,url: '${pageContext.request.contextPath}/showdata' //数据接口
	    ,page: true //开启分页
	    ,cols: [[ //表头
	      {field: 'id', title: 'ID', width:80}
	      ,{field: 'password', title: '密码', width:80} 
	      ,{field: 'phone', title: '电话', width: 177}
	      ,{field: 'sid', title: '手册编号', width:80}
	      ,{field: 'username', title: '用户名', width:80}
	     
	    
	    ]]
	  });
	  */
	});
</script>
</body>
</html>
      