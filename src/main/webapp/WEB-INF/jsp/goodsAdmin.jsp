<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>商品管理</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<link rel="stylesheet" type="text/css" href="${path}/css/jquery.dataTables.css">
<script src="${path}/js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript" charset="utf8" src="${path}/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="${path}/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" href="layui/css/layui.css">
<script src="layui/layui.js"></script>
<style>
body .demo-class .layui-layer-btn{border-top:1px solid #E9E7E7}
</style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">商品销售管理系统</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="pic/header.png" class="layui-nav-img">
          ${docName}
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
        <li class="layui-nav-item ">
          <a href="javascript:;">事务处理</a>
          <dl class="layui-nav-child">
            <dd><a href="towhere?tourl=reserveHandle">订单处理</a></dd>
          </dl>
        </li>
       <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;">系统管理</a>
          <dl class="layui-nav-child">
            <dd><a href="towhere?tourl=userAdmin"><i class="layui-icon layui-icon-user" style="font-size: 14px; color: #xe66f;"></i> 用户管理</a></dd>
             <dd class="layui-this"><a href="towhere?tourl=goodsAdmin">商品信息</a></dd>
             <dd><a href="towhere?tourl=saleAdmin">销售记录</a></dd>
               <dd><a href="towhere?tourl=bossAdmin">客户管理</a></dd>
                    <dd ><a href="towhere?tourl=buyAdmin"><i class="layui-icon layui-icon-group" style="font-size: 14px; color: #xe66f;"></i>供应商管理</a></dd>            
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
  	 <div><button onclick="add()" class="layui-btn layui-btn-normal ">十</button></div>
 <div  id="add" style="display:none">
<form class="layui-form" action="addGoods" mehod="post">
 	<div class="layui-form-item">

	    <label class="layui-form-label" >商品号:</label>

 
		    <div class="layui-input-block">
		      <input type="text" id="gid" autocomplete="off" class="layui-input"  disabled="false">
		      <input type="hidden" id="gid1" name="gid" autocomplete="off" class="layui-input">
		      
  
	  </div>
	 </div>


    <div class="layui-form-item">
	    <label class="layui-form-label">商品名称:</label>
	    <div class="layui-input-block">
	      <input type="text" name="gname" required  lay-verify="required"  autocomplete="off" class="layui-input">
	    </div>
   </div>
     <div class="layui-form-item">
	    <label class="layui-form-label">进货价格:</label>
	    <div class="layui-input-block">
	      <input type="text" name="jprice" required  lay-verify="required" placeholder="保留两位小数" autocomplete="off" class="layui-input">
	    </div>
   </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">销售价格:</label>
	    <div class="layui-input-block">
	      <input type="text" name="sprice" required  lay-verify="required" placeholder="保留两位小数" autocomplete="off" class="layui-input">
	    </div>
   </div>
   		  <div class="layui-form-item">
		    <label class="layui-form-label">供应商:</label>
		    <div class="layui-input-block">
		    	 <select name="sid" id="sid">
		        <option value=""></option>
		      </select>      
		    </div>
		  </div>
    <div class="layui-form-item">
	    <label class="layui-form-label">库存量:</label>
	    <div class="layui-input-block">
	      <input type="text" name="number" required  lay-verify="required" autocomplete="off" class="layui-input">
	    </div>
   </div> 
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">确认</button>
      <button type="reset" class="layui-btn layui-btn-primary">重填</button>
    </div>
  </div>
</form>
</div>
  
  
  
  
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
       
 <center><h4>商品信息管理</h4></center>
 
 <table id="table_id_example"  class="layui-table " lay-skin="line" lay-size="lg">
    <thead>
        <tr>
            <th>商品ID</th>
            <th>商品名称</th>
             <th>进货价格</th>
              <th>销售价格</th>
               <th>供应商</th>
               <th>库存量</th>
                <th>操作</th>
        </tr>
    </thead>
    <tbody>
       
    </tbody>
</table>
  
    
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="../src/layui.js"></script>
<script type="text/html" id="barDemo">
  
</script>

<script>
layui.use('form', function(){
    var form = layui.form; 
    form.render();
}); 
function Init(){
	
	 $.ajax({
	        url: "${pageContext.request.contextPath}/list2",
	        type: "POST",
	        dataType: "text",
	        success: function(data){
	        	var jsonObj = JSON.parse(data);
	        	for(var i=0;i<jsonObj.length;i++){
	        	    var text=jsonObj[i].sid;
	        	    var val=jsonObj[i].sname;  
	        	    var option = new Option(val, text);      
	       		    $("#sid")[0].options.add(option);     
	        	}

	        }
	    });
	
  }
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
		   $("#gid")[0].value=item+Num.toString();  
		   $("#gid1")[0].value=item+Num.toString(); 
		   $("#jid")[0].disabled=true;   
			
	});
$(document).ready( function () {
	 
	
    $('#table_id_example').DataTable( {
     	 language: {
 	        "sProcessing": "处理中...",
 	        "sLengthMenu": "显示 _MENU_ 项结果",
 	        "sZeroRecords": "没有匹配结果",
 	        "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
 	        "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
 	        "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
 	        "sInfoPostFix": "",
 	        "sSearch": "搜索:",
 	        "sUrl": "",
 	        "sEmptyTable": "表中数据为空",
 	        "sLoadingRecords": "载入中...",
 	        "sInfoThousands": ",",
 	        "oPaginate": {
 	            "sFirst": "首页",
 	            "sPrevious": "上页",
 	            "sNext": "下页",
 	            "sLast": "末页"
 	        },
 	        "oAria": {
 	            "sSortAscending": ": 以升序排列此列",
 	            "sSortDescending": ": 以降序排列此列"
 	        }
 	    },
        "ajax": "${pageContext.request.contextPath}/listGoods",
        "columns": [
            { "data": "gid" },
            { "data": "gname" },
            { "data": "jprice" },
            { "data": "sprice" },
            { "data": "sid" },
            { "data": "number"},
        ],
        "columnDefs": [ {
        	  "width": "30%", "targets": 2 ,
          
            targets: 6,
            render: function (data, type, row, meta) {
                return '<a type="button" class="layui-btn layui-btn-xs" id="edit" href="#" onclick="edit('+row.gid+')" >查看/编辑</a>'
                +'<a type="button" class="layui-btn layui-btn-danger layui-btn-xs"  href="#"  onclick="del('+row.gid+')">删除</a>'
                ;
            }
          } ]
        
    } );
  
  
    
} );


layui.use('element', function(){
  var element = layui.element;
  
});

layui.use('layer', function(){
	  var layer = layui.layer;
	  
	 
	});         
Init();
function add() {  

	$('#add').show();

	  layer.open({  
		  skin: 'demo-class',
	        type: 1,  
	        title: "商品添加",  
	        area: ['430px', '500px'],  
	        maxmin: false,  
	        closeBtn: 1,  
	        shade:0,
	        content: $('#add'),
	        end:function(){
	        	
	      	  $('#add').hide(); 
	        }
	       
	  
	    });  

  
}
function del(index){  

	 $.ajax({
        url: "${pageContext.request.contextPath}/deleteGoods",
        type: "POST",
        data:{gid:index},
        dataType: "text",
        success: function(data){
        	location.reload(true); 
        
        }

    });
 
  };  
  
  function edit(index) {  
	  
	  layer.open({  
		  skin: 'demo-class',
	        type: 2,  
	        title: "编辑模式",  
	        area: ['430px', '500px'],  
	        maxmin: false,  
	        closeBtn: 1,  
	        content: 'showGoods?gid='+index+''
	    });  
	       
    
  }



</script>

</body>
</html>
      