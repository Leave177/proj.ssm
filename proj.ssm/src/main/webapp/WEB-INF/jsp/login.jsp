<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- <!DOCTYPE> -->
<html>
  <head>
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap/css/bootstrap.min.css">
    <link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"> 
    
    <script type="text/javascript" src="./assets/global/plugins/jquery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>
  </head>
  <body>
  	<div class="container col-md-5 col-sm-offset-3 col-md-offset-3">
  	    <form class="form form-horizontal col-sm-offset-3 col-md-offset-3">
	    	<div class="panel panel-default">
	    		<div class="panel-head">
	    			<div>
	    				登陆
	    			</div>
	    		</div>
	    		<div class="panel-body">
			    	<div class="row">
			    		<div class="col-xs-12 col-sm-12 col-md-10 col-bg-10">
			    			<div class="form-group">
				    			<label class="control-label col-xs-4"><i class="fa fa-user fa-lg info"></i></label>
				    			<div class="col-xs-8">
				    				<input class="form-control" type="text" id="username" name="username" required  maxlength="30" placeholder="请输入用户名"/>
				    			</div>
			    			</div>
		    			</div>
		    		</div>
		    		<div class="row">
			    		<div class="col-xs-12 col-sm-12 col-md-10 col-bg-10">
			    			<div class="form-group">
			    				<label class="control-label col-xs-4"><i class="fa fa-lock fa-lg"></i> </label>
			    				<div class="col-xs-8">
			    					<input class="form-control" type="password" id="password" name="password"  required minlength="5" placeholder="请输入密码"/>
			    				</div>
			    			</div>
			    		</div>
		    		</div>
		    		<div class="row">
		    			<div class=" col-cs-12">
			    			<a id="login" class="btn btn-info col-md-offset-4"">登陆</a>
			    			<a href="javascript:;" class="btn btn-danger col-md-offset-2">取消</a>
		    			</div>
			   		</div>
		   		</div>
		   		<div class="panel-footer">
		   			测试登陆
		   		</div>
	    	</div>
    	</form>
    </div>
    
    <script type="text/javascript">
    	$(document).ready(function(event,container){
    		$("#login").on("click",function(event){
//     		debugger;
    		var username = $("#username").val();
    		var password = $("#password").val();
    			$.ajax({
    				url:"login",
    				data:{"username":username,"password":password},
    				dataType:"json",
    				type:"post",
    				success:function(){
    					alert(1234);
    				}
    			});
    		});
    	});
   		
    </script>
  </body>
</html>