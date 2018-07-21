<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>商品购买</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<link rel="stylesheet" type="text/css" href="${path}/css/jquery.dataTables.css">
<script src="${path}/js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript" charset="utf8" src="${path}/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="${path}/js/jquery.dataTables.min.js"></script>


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
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">信息管理</a>
          <dl class="layui-nav-child">
              <dd><a href="towhere?tourl=userAdmin"><i class="layui-icon layui-icon-user" style="font-size: 14px;"></i> 用户信息</a></dd>
            <dd><a href="towhere?tourl=goodsAdmin">商品信息</a></dd>
             <dd><a href="towhere?tourl=saleAdmin">销售记录</a></dd>
                  <dd><a href="towhere?tourl=bossAdmin">客户管理</a></dd>
            <dd><a href="towhere?tourl=buyAdmin">供应商管理</a></dd>
          </dl>
        </li>

      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;" id="ct">

    
 <center><h4>订单处理</h4></center>
 <center>
 <div style="width:500px" id="left">
		   <form class="layui-form" action="addDigital" target="nm_iframe">
		    <div class="layui-form-item">
		    <label class="layui-form-label">订单号:</label>
		    <div class="layui-input-block">
		      <input type="text" name="rid" id="rid"   class="layui-input">
		      <input type="hidden" name="did" id="did" autocomplete="off" class="layui-input">
		      
		    </div>
		  </div>
		  	  <div class="layui-form-item">
		    <label class="layui-form-label">客户:</label>
		    <div class="layui-input-block">
		    		      <select name="cid" id="cid">
		         </select>
		    </div>
		  </div>

		  <div class="layui-form-item">
		    <label class="layui-form-label">商品列表</label>
		    <div class="layui-input-block">
		    		      <select name="gid" id="gid">
		         </select>
		<!--      <select name="gid" id="gid" lay-verify="required">
		        <option value=""></option>
		        <option value="10001">商品1</option>
		        <option value="10002">商品2</option>
		        <option value="10003">商品3</option>
		        <option value="10004">商品4</option>
		        <option value="21404410">商品5</option>
		      </select> -->
		    </div>
		  </div>
		    <div class="layui-form-item">
		    <label class="layui-form-label">数量</label>
		    <div class="layui-input-block">
		      <input type="text" name="number" id="number" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
			    <div class="layui-input-block">
			    <button class="layui-btn" onclick="newsp()" >新建购物车</button>
			      <button class="layui-btn" lay-submit lay-filter="formDemo" onclick="tijiao()" >添加至购物车</button>
			      <!-- <button type="reset" class="layui-btn layui-btn-primary">重填</button> -->
			       
			    </div>
			  </div>
		  
		</form>

</div>
</center>
<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>

 <div style=" border:1px solid black; height:400px; width:60%; margin-left:300px; display:none;" id="right">
 <center><h4 class="layui-bg-black">购物车</h4></center>
		  <table class="layui-table" lay-skin="line" >
				<colgroup>
					    <col width="100">
					    <col width="100">
					    <col width="100">
				
			  </colgroup>
		      <thead>
			      <tr>
			        <th>明细ID</th>
			        <th>商品名</th>
			        <th>数量</th>
			      </tr> 
    			</thead>
    			<tbody id="tb">
    			
    			
    			</tbody>
		  
		  </table>
</div>
<center><button onclick="order()" id="tjdd" style="display:none;" class="layui-btn layui-btn-normal">提交订单</button></center>
			

    </div>
</div>
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="../src/layui.js"></script>
<script>
//Demo
function loadInit(){

	 $.ajax({
	        url: "${pageContext.request.contextPath}/list",
	        type: "POST",
	        dataType: "text",
	        success: function(data){
	        	var jsonObj = JSON.parse(data);//转换为json对象
	        	for(var i=0;i<jsonObj.length;i++){
	        	    var text=jsonObj[i].gid;
	        	    var val=jsonObj[i].gname;
	        	    var option = new Option(val, text);      
	       		    $("#gid")[0].options.add(option);     

	        	}

       		

	        }

	    });
	
  }
function loadInit2(){

	 $.ajax({
	        url: "${pageContext.request.contextPath}/list3",
	        type: "POST",
	        dataType: "text",
	        success: function(data){
	        	var jsonObj = JSON.parse(data);//转换为json对象
	        	for(var i=0;i<jsonObj.length;i++){
	        	    var text=jsonObj[i].cid;
	        	    var val=jsonObj[i].cname;
	        	    var option = new Option(val, text);      
	       		    $("#cid")[0].options.add(option);     

	        	}

      		

	        }

	    });
	
 }
loadInit();
loadInit2();
function order() {  
var rid=$("#rid")[0].value;

$.ajax({
    url: "${pageContext.request.contextPath}/updateRecord",
    type: "POST",
    data:{rid:rid},
    success: function(data){
        alert("订单提交完成");
       	location.reload(true); 

    }

});
	
};
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  //form.on('submit(formDemo)', function(data){
 //   layer.msg(JSON.stringify(data.field));
 // //  return false;
  //});
});
layui.use(['jquery', 'layer'], function(){ 
	  var $ = layui.$ //重点处
	  ,layer = layui.layer;
	

	});


//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});


function tijiao() {  
	var html = "<tr><td>"+$("#did").val()+"</td><td style='border:1px solid white;'>"+$("#gid").val()+"</td><td style='border:1px solid white;'>"+$("#number").val()+"</td></tr>";   //自己定义好要添加的信息
    $("#tb").append(html);  //添加对应的内容到table

  
};

function newsp() {  
	
	$("#right").toggle();
	$("#tjdd").toggle();

	 var items = ['1','2','4','5','6','7','8','9'];
		var item = items[Math.floor(Math.random()*items.length)];
	  var Num=""; 
	  var Num2=""; 
	   for(var i=0;i<7;i++) 
	   { 
	   Num+=Math.floor(Math.random()*10); 
	   } 
	   for(var i=0;i<6;i++) 
	   { 
	   Num2+=Math.floor(Math.random()*10); 
	   } 
	var rid=item+Num.toString();   
	var did=item+Num2.toString();  
	$("#rid")[0].value=rid;
	$("#did")[0].value=did;
	var datetime=CurentTime();
	var cid=$("#cid")[0].value;
	var record={
			"rid": rid,
			"datetime": datetime,
			"allmoney":"0",
			"cid":cid
		};

	 $.ajax({
	        url: "${pageContext.request.contextPath}/addRecord",
	        type: "POST",
	        data:record,
	        success: function(data){
	            
	        }

	    });
	
	
};
function CurentTime()
{ 
    var now = new Date();
    
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();            //日
    
    var hh = now.getHours();            //时
    var mm = now.getMinutes();          //分
    var ss = now.getSeconds();           //秒
    
    var clock = year + "-";
    
    if(month < 10)
        clock += "0";
    
    clock += month + "-";
    
    if(day < 10)
        clock += "0";
        
    clock += day + " ";
    
    if(hh < 10)
        clock += "0";
        
    clock += hh + ":";
    if (mm < 10) clock += '0'; 
    clock += mm + ":"; 
     
    if (ss < 10) clock += '0'; 
    clock += ss; 
    return(clock); 
}



</script>

</body>
</html>
      