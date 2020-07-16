<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
   <script type="text/javascript" src="js/judge.js"></script>
  </head>
  
  <body>
  ${msg}
    <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <c:if test="${type == 0}">
                <li><a href="#">我的课程</a></li>
                <li><a href="ssm_Timetable.action">我的课表</a></li>
                </c:if>
                <c:if test="${type == 1}">
                <li><a href="#">选课系统</a></li>
                <li><a href="ssm_teacherselection.action">选课情况</a></li>
                </c:if>
                <c:if test="${sign != 6}">
                	<li class="am-active">学生名单</li>
                </c:if>
                <c:if test="${sign == 6}">
                	<li class="am-active">录入成绩</li>
                </c:if>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>2017-2018学年 第二学期 课程：${coName} 学生名单
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-id">ID</th>
                                            <th class="table-type">学号</th>
                                            <th class="table-type">姓名</th>
                                            <th class="table-date am-hide-sm-only">专业</th>
                                            <th class="table-date">班级</th>
                                            <th class="table-date">成绩</th>
                                            <c:if test="${sign == 6}">
                								<th class="table-date">操作</th>
                							</c:if>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${course}" var="CourseInfo" begin="${begin}" end="${end}" varStatus="status">
	                                    	<tr>
                                            <td>${status.index + 1}</td>
                                            <td>${CourseInfo.userCode}</td>
                                            <td>${CourseInfo.userName}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.userMajor}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.userClassroom}</td>
                                            <c:if test="${sign != 6}">
                                            	<td class="am-hide-sm-only">${score[status.index]}</td>
                                            </c:if>
                                            <c:if test="${sign == 6}">
                                            <form action="ssm_savescore.action?studentCode=${CourseInfo.userCode}&coId=${coId}" method="post">
                								<td>
                									<input type="text" class="tpl-form-input" name="descore" value="${score[status.index]}">
                								</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button type="submit" class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                        	<span class="am-icon-save"></span>
                                                        			提交
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                            </form>
                							</c:if>
                                        </tr>
	                                   </c:forEach>
                                    </tbody>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <c:forEach var="x" begin="1" end="${course_allpage}">
                                            	<c:if test="${page == x}">
                                            		<li class="am-active"><a href="ssm_paging.action?page=${x}&type=0">${x}</a></li>
                                            	</c:if>
                                            	<c:if test="${page != x}">
                                            		<li><a href="ssm_paging.action?page=${x}&type=0">${x}</a></li>
                                            	</c:if>
											</c:forEach>
                                            <li class="am-disabled"><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
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
