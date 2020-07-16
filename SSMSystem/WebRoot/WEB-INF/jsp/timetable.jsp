<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
   <title>已选课程</title>
  </head>
  
  <body>
    <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	我的课表
            </div>
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">我的课程</a></li>
                <li class="am-active">我的课表</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>2017-2018学年 第二学期课表
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">上课时间</th>
                                            <th class="table-title">课程名称</th>
                                            <th class="table-title">类型</th>
                                            <th class="table-type">教师</th>
                                            <th class="table-date">上课地点</th>
                                            <c:if test="${type == 1}">
                                            	<th class="table-date">学生名单</th>
                                            </c:if>
                                            <c:if test="${sign == 6}">
                                            	<th class="table-date">操作</th>
                                            </c:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${timetable}" var="CourseInfo">
	                                      <tr>
                                            <td>${CourseInfo.coTime}</td>
                                            <td>${CourseInfo.coName}</td>
                                            <td>必修</td>
                                            <td>${CourseInfo.teacherName}</td>
                                            <td>${CourseInfo.coAddress}</td>
                                            <c:if test="${type == 1}">
                                            	<td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                        	<span class="am-icon-pencil-square-o"></span>
                                                        		<a href="ssm_showStudent.action?coId=${CourseInfo.coId}&coName=${CourseInfo.coName}&sign=0">
                                                        			查看
                                                        		</a>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                            </c:if>
                                            <c:if test="${sign == 6}">
                                            	<td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                        	<span class="am-icon-pencil-square-o"></span>
                                                        	<c:if test="${CourseInfo.coStatus == 3}">
                                                        		<a href="ssm_showStudent.action?coId=${CourseInfo.coId}&coName=${CourseInfo.coName}&sign=0&type=6">
                                                        			录入成绩
                                                        		</a>
                                                        	</c:if>
                                                        	<c:if test="${CourseInfo.coStatus != 3}">
                                                        		<a href="#" onclick="alert('录入成绩系统未开放！')">
                                                        			录入成绩
                                                        		</a>
                                                        	</c:if>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                            </c:if>
                                         </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>                
                            <hr>
                        </div>
                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>
        </div>
    </div>
  </body>
</html>
