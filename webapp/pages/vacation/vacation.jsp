<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理</title>

<link rel="stylesheet" href="${ctx}/css/style.css" type="text/css" />
<link rel="stylesheet" href="${ctx}/css/main.css" type="text/css" />
<link rel="stylesheet" href="${ctx}/css/jquery-ui.css" type="text/css" />

<script type="text/javascript" src="${ctx}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery-ui.min.js"></script>

</head>

<body>
<form method="post" action="process-startVacation.action">
	<div id="main">
        
        <div class="where">
            <ul>
            </ul>
        </div>
        
      <div class="sort_switch">
          <ul id="TabsNav">
          	  <li class="selected"><a href="#">请假申请</a></li>
          </ul>
      </div>
      
      <div id="tagContent0" class="sort_content">

        	<div class="currency_area hue9">
            	<div class="the_content">
					<input name="vacationForm.userId" type="hidden" value="${sessionScope.user.id}"/>
					<input name="vacationForm.userName" type="hidden" value="${sessionScope.user.lastName}"/>
                	<table class="tableHue2" width="100%" border="1" bordercolor="#dddddd" cellspacing="0" cellpadding="0">
                      <tbody>
                        <tr>
                          <td width="15%" class="title1">开始日期：</td>
                          <td class="left"><input name="vacationForm.startDate" id="startDate" type="text" class="input_text2" size="30" readonly/></td>
                        </tr>
                        <tr>
                          <td width="15%" class="title1">结束日期：</td>
                          <td class="left"><input name="vacationForm.endDate" id="endDate" type="text" class="input_text2" size="30" readonly/></td>
                        </tr>
                        <tr>
                          <td width="15%" class="title1">请假天数：</td>
                          <td class="left"><input name="vacationForm.days" type="text" class="input_text2" size="30" /></td>
						  </td>
                        </tr>
                        <tr>
                          <td width="15%" class="title1">休假类型：</td>
                          <td class="left">
							<select name="vacationForm.vacationType">
									<option value="0">年假</option>
									<option value="1">事假</option>
									<option value="2">病假</option>
							</select>
						  </td>
                        </tr>
                        <tr>
                          <td width="15%" class="title1">原因：</td>
                          	<td class="left">
								<textarea cols="33" rows="5" name="vacationForm.reason"></textarea>
							</td>
                        </tr>
                      </tbody>
                  </table>
				  
                </div>
            </div>
            
            <div class="fun_area" style="text-align:center;"><input type="submit" value="确 定" class="input_button1"/></div>

      </div>
</div>
</form>

</body>

<script>
	$('#startDate').datepicker({
		currentText: 'Now',
		dateFormat: 'yy-mm-dd'
	}); 
	$('#endDate').datepicker({
		currentText: 'Now',
		dateFormat: 'yy-mm-dd'
	}); 
</script>

</html>
