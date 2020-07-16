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
                <li><a href="#">选课系统</a></li>
                <li class="am-active">全部课程</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>2017-2018学年 第二学期选课列表
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                    <form action="ssm_allcourse.action?sign=0" method="post" name="form">
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select name="title" data-am-selected="{btnSize: 'sm'}">
					              <option value="1">所有类别</option>
					              <option value="2">课程代码</option>
					              <option value="3">课程名称</option>
					              <option value="4">教师</option>
					              <option value="5">学分</option>
					            </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field" name="keyword">
                                <span class="am-input-group-btn">
						            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="submit"></button>
						        </span>
                            </div>
                        </div>
                      </form>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-id">ID</th>
                                            <th class="table-title">课程代码</th>
                                            <th class="table-title">课程名称</th>
                                            <th class="table-title">类型</th>
                                            <th class="table-type">教师</th>
                                            <th class="table-type">学分</th>
                                            <th class="table-date am-hide-sm-only">上课时间</th>
                                            <th class="table-date">上课地点</th>
                                            <th class="table-date am-hide-sm-only">总人数</th>
                                            <th class="table-date am-hide-sm-only">已选人数</th>
                                            <th class="table-set">&nbsp;操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${course}" var="CourseInfo" begin="${begin}" end="${end}" varStatus="status">
	                                    	<tr>
                                            <td>${CourseInfo.coId}</td>
                                            <td>${CourseInfo.coCode}</td>
                                            <td>${CourseInfo.coName}</td>
                                            <td>选修</td>
                                            <td class="am-hide-sm-only">${CourseInfo.teacherName}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.coCredit}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.coTime}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.coAddress}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.coNumber}</td>
                                            <td class="am-hide-sm-only">${CourseInfo.coSelected}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                    	
                                                    	<c:if test="${CourseInfo.coNumber != CourseInfo.coSelected}">
                                                    			<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>
                                                    				<a href="ssm_choose_course.action?index=${status.index}&sign=0">
                                                    				选择
                                                    			</a>
                                                    			</button>
                                                    	</c:if>
                                                    </div>
                                                </div>
                                            </td>
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
  </body>
</html>
