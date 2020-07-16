<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
   <title>已选课程</title>
  </head>
  
  <body>
  ${msg }
    <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	选课情况
            </div>
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">选课系统</a></li>
                <li class="am-active">选课情况</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>2017-2018学年 第二学期选课情况
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                        	<th>ID</th>
                                            <th class="table-title">课程代码</th>
                                            <th class="table-title">课程名称</th>
                                            <th class="table-type">教师</th>
                                            <th class="table-date">总人数</th>
                                            <th class="table-date">已选人数</th>
                                            <th class="table-date">学生名单</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${selection}" var="CourseInfo">
	                                      <tr>
                                            <td>${CourseInfo.coId}</td>
                                            <td>${CourseInfo.coCode}</td>
                                            <td>${CourseInfo.coName}</td>
                                            <td>${CourseInfo.teacherName}</td>
                                            <td>${CourseInfo.coNumber}</td>
                                            <td>${CourseInfo.coSelected}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                        	<span class="am-icon-pencil-square-o"></span>
                                                        	<c:if test="${CourseInfo.coSelected != 0}">
                                                        		<a href="ssm_showStudent.action?coId=${CourseInfo.coId}&coName=${CourseInfo.coName}&sign=1">
                                                        			查看
                                                        		</a>
                                                        	</c:if>
                               								<c:if test="${CourseInfo.coSelected == 0}">
                               									<a href="#" onclick="alert('未有学生选择！')">
                                                        			查看
                                                        		</a>
                                                        	</c:if>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
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
