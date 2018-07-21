<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>注册</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<link rel="stylesheet" type="text/css" href="${path}/css/jquery.dataTables.css">
<script src="${path}/js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript" charset="utf8" src="${path}/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="${path}/js/jquery.dataTables.min.js"></script>
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
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">  
 <center><h4>记录详情</h4></center>
	 <table id="table_id_example"  class="layui-table " lay-skin="line" lay-size="lg">
	    <thead>
	        <tr>
	            <th>明细ID</th>
	             <th>商品名</th>
	            <th>数量</th>
	              <th>价格</th>
	             <th>记录Id</th>
	               <th>总价</th>
	        </tr>
	    </thead>
	    <tbody>
	       
	    </tbody>
	</table>
  </div>
  </div>
  </center>
<script>
$(document).ready( function () {
    $('#table_id_example').DataTable( {
        "ajax": "${pageContext.request.contextPath}/Digital?rid="+${rid}+'',
        "columns": [
            { "data": "did" },
            { "data": "gname" },
            { "data": "number"},
            { "data": "sprice"},
            { "data": "rid"},
            { "data": "all"}
                  ],
                 
        
    } );   
} );
layui.use(['jquery', 'layer'], function(){ 
	  var $ = layui.$ //重点处
	  ,layer = layui.layer;
	
	});

layui.use('element', function(){
var element = layui.element;

});


</script>
</body>
</html>    