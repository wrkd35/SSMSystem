<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <jsp:include page="body.jsp"/>
   <script type="text/javascript" src="js/judge.js"></script>
  </head>
  
  <body>
  ${msg}
    <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">用户管理</a></li>
                <li><a href="root_usercenter.action?sign=0">用户中心</a></li>
                <li class="am-active">编辑用户</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 
                        	学号[${U.userCode}]编辑
                    </div>
                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">
                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="root_updateuserfrom.action?userCode=${U.userCode}" method="post" name="form" enctype = "multipart/form-data" onSubmit="return myCheck()">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">学校代码</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" Name="school_code" value="${U.schoolCode}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">学校名称</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" Name="school_name" value="${U.schoolName}" >
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">专业</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" Name="major" value="${U.userMajor}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">班级</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="classroom" value="${U.userClassroom}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">真实姓名</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" Name="name" value="${U.userName}" >
                                    </div>
                                </div>

                                 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">性别</label>
                                    <div class="am-u-sm-9">
                                        <small>
                                       		男&nbsp;&nbsp;
                                       		<input type="radio" name="sex" value="0" <c:if test="${U.userSex == 0}">checked</c:if>> 
                                       		&nbsp;&nbsp;&nbsp;
                                       		女&nbsp;&nbsp;
                                       		<input type="radio" name="sex" value="1" <c:if test="${U.userSex == 1}">checked</c:if>> 	
                                       	</small>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">更新用户</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
      </div>
  </body>
</html>
