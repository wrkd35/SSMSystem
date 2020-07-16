<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<jsp:include page="body.jsp"/>
<head></head>
<body>

        <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">个人资料</a></li>    
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>个人资料
                    </div>
                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal">
                                <c:if test="${user.userType != 2}">
	                                <div class="am-form-group">
	                                    <label for="user-name" class="am-u-sm-3 am-form-label">学校:</label>
	                                    <div class="am-u-sm-9">
	                                        <small>${user.schoolName}</small>
	                                    </div>
	                                </div>
                                </c:if>
								<div class="am-form-group">
                                    
                                    <label for="user-name" class="am-u-sm-3 am-form-label">照片:</label>
                                    <div style="width:15px;height:100px;float:left"> </div>
                                    <div style="width:100px;height:100px;float:left">
                                    	<img src="${user.userImage}" style="width:100px;height:100px;" >
                                    </div>
                                </div>
								<div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">身份:</label>
                                    <div class="am-u-sm-9">
                                        <small>
                                        <c:if test="${user.userType == 0}">
                                        	学生
                                        </c:if>
                                        <c:if test="${user.userType == 1}">
                                        	老师
                                        </c:if>
                                        <c:if test="${user.userType == 2}">
                                        	管理员
                                        </c:if>
                                        </small>
                                    </div>
                                </div>
								
								<div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">姓名:</label>
                                    <div class="am-u-sm-9">
                                        <small>${user.userName}</small>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">学号:</label>
                                    <div class="am-u-sm-9">
                                        <small>${user.userCode}</small>
                                    </div>
                                </div>
								<c:if test="${user.userType != 2}">
	                                <div class="am-form-group">
	                                    <label for="user-name" class="am-u-sm-3 am-form-label">专业:</label>
	                                    <div class="am-u-sm-9">
	                                        <small>${user.userMajor}</small>
	                                    </div>
	                                </div>
	
	                                <div class="am-form-group">
	                                    <label for="user-name" class="am-u-sm-3 am-form-label">班级:</label>
	                                    <div class="am-u-sm-9">
	                                        <small>${user.userClassroom}</small>
	                                    </div>
	                                </div>
								</c:if>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">性别:</label>
                                    <div class="am-u-sm-9">
                                        <small>
                                        <c:if test="${user.userSex == 0}">
                                        	男
                                        </c:if>
                                        <c:if test="${user.userSex == 1}">
                                        	女
                                        </c:if>
                                        </small>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
</body>

</html>
