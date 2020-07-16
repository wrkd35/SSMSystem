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
                <li><a href="#">选课系统</a></li>
                <li><a href="ssm_allcourse.action?sign=0">课程信息</a></li>
                <li class="am-active">编辑课程</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 编辑
                    </div>
                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="root_savecourse.action?sign=1&coId=${course_info.coId}" method="post" name="form" onSubmit="return myCheck()">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">课程代码</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coCode" value="${course_info.coCode}">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">课程名称</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coName" value="${course_info.coName}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">课程状态</label>
                                    <div class="am-u-sm-9">
                                    		<small>未选课</small>
                                    	<c:if test="${course_info.coStatus == 0}">
                                    		<input type="radio" name="coStatus" value="0" checked>
                                    	</c:if>
                                   		<c:if test="${course_info.coStatus != 0}">
                                    		<input type="radio" name="coStatus" value="0">
                                    	</c:if>
                                        	<small>开始选课</small>
                                        <c:if test="${course_info.coStatus == 1}">
                                    		<input type="radio" name="coStatus" value="1" checked>
                                    	</c:if>
                                   		<c:if test="${course_info.coStatus != 1}">
                                    		<input type="radio" name="coStatus" value="1">
                                    	</c:if>
                                        	<small>结束选课</small>
                                        <c:if test="${course_info.coStatus == 2}">
                                    		<input type="radio" name="coStatus" value="2" checked>
                                    	</c:if>
                                   		<c:if test="${course_info.coStatus != 2}">
                                    		<input type="radio" name="coStatus" value="2">
                                    	</c:if>
                                        	<small>录入成绩</small>
                                        <c:if test="${course_info.coStatus == 3}">
                                    		<input type="radio" name="coStatus" value="3" checked>
                                    	</c:if>
                                   		<c:if test="${course_info.coStatus != 3}">
                                    		<input type="radio" name="coStatus" value="3">
                                    	</c:if>
                                        	<small>课程结束</small>
                                        <c:if test="${course_info.coStatus == 4}">
                                    		<input type="radio" name="coStatus" value="4" checked>
                                    	</c:if>
                                   		<c:if test="${course_info.coStatus != 4}">
                                    		<input type="radio" name="coStatus" value="4">
                                    	</c:if>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">学分</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coCredit" value="${course_info.coCredit}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">人数</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coNumber" value="${course_info.coNumber}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">上课时间</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coTime" value="${course_info.coTime}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">教师工号</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="teacherCode" value="${course_info.teacherId}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">教师姓名</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="teacherName" value="${course_info.teacherName}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">上课地点</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coAddress" value="${course_info.coAddress}">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">保存修改</button>
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
