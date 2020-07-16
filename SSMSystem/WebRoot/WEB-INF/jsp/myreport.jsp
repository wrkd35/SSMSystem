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
                	我的成绩单
            </div>
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">我的课程</a></li>
                <li class="am-active">我的成绩单</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>2017-2018学年 第二学期成绩单
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">课程代码</th>
                                            <th class="table-title">课程名称</th>
                                            <th class="table-title">类型</th>
                                            <th class="table-type">教师</th>
                                            <th class="table-date">学分</th>
                                            <th class="table-date">成绩</th>
                                            <th class="table-date">单科绩点</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach items="${myreport}" var="CourseInfo">
	                                      <tr>
                                            <td>${CourseInfo.coCode}</td>
                                            <td>${CourseInfo.coName}</td>
                                            <td>必修</td>
                                            <td>${CourseInfo.teacherName}</td>
                                            <td>${CourseInfo.coCredit}</td>
                                            <td>${CourseInfo.score}</td>
                                            <td>${CourseInfo.gpa}</td>
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
