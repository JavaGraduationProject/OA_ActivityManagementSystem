<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<TITLE>登录 </TITLE>


<link rel="stylesheet" href="${ctx}/css/style.css" type="text/css" />
<link rel="stylesheet" href="${ctx}/css/top.css" type="text/css" />

<style>

.mainDiv {
	background-color:#CFE8E9;
	height: 100%;
}

.formDiv {
	font-size: 20px; 
	margin-bottom: 20px;
}

.formDiv input {
	width: 200px; 
	height: 30px;
}

.textDiv {
	margin-top: 30px;
}

.textDiv input {
	width: 200px; 
	height: 30px;
}

.buttonDiv {
	margin-top: 30px;
}

.buttonDiv input {
	width: 80px; 
	height: 40px;
	margin-left: 40px;
}

</style>

</HEAD>

<BODY>

<div class="mainDiv">

	<div style="margin-top: 90px; ">
		<div style="height: 40px;"></div>
		<div style="height: 40px; margin-top: 100px;">
			<h1 style="font-size:30px; margin-top: 100px;"><strong>欢迎使用OA系统</strong></h1>
	    </div>
		
		<div class="formDiv">
			<span style="color:red; height: 30px;">${loginMsg}</span>
			<form method="post" action="${ctx}/user-login.action">
				<div class="textDiv">
					<span style="width: 300px; margin-right: 20px;">用户名: </span>
					<input type="text" name="userForm.lastName"/>
				
				</div>
				<div class="textDiv">
					<span style="width: 300px; margin-right: 40px;">密码:</span> 
					<input type="password" name="userForm.passwd"/>
				</div>
				<div class="buttonDiv">
					<input type="submit" value="确定"/>
					<input type="button" value="取消"/>
				</div>
			</form>
		</div>
	</div>

</div>



</BODY>

</HTML>
