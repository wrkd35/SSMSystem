<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
   <script type="text/javascript" src="js/judge.js"></script>
   <style type="text/css">
   </style>
  </head>
  
  <body>
  ${msg}
    <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">课程系统</a></li>
                <li class="am-active">课程信息</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>选课列表
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                    
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 
                                    	<a href="root_insertcourse.action" style="color:white">	
                                    		新增
                                    	</a>
                                    </button>
                                    <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 
                                    	<a href="root_readycourse.action" style="color:white">	
                                    		准备状态
                                    	</a>
                                    </button>
                                    <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                </div>
                            </div>
                        </div>
                    
                    <form action="ssm_allcourse.action?sign=0" method="post" name="form">
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select name="title" data-am-selected="{btnSize: 'sm'}">
					              <option value="1">所有类别</option>
					              <option value="2">课程代码</option>
					              <option value="3">课程名称</option>
					              <option value="4">教师</option>
					              <option value="5">学分</option>
					              <option value="6">状态</option>
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
                                            <th class="table-title">状态</th>
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
                                            <c:if test="${CourseInfo.coStatus == 0}">
                                            	未选课
                                            </c:if>
                                            <c:if test="${CourseInfo.coStatus == 1}">
                                            	正在选课	
                                            </c:if>
                                            <c:if test="${CourseInfo.coStatus == 2}">
                                            	已开始
                                            </c:if>
                                            <c:if test="${CourseInfo.coStatus == 3}">
                                            	正在进行
                                            </c:if>
                                            <c:if test="${CourseInfo.coStatus == 4}">
                                            	已结束
                                            </c:if>
                                            </td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 
                                                        	<a href="root_updatecourse.action?index=${status.index}">
                                                        		编辑
                                                        	</a>
                                                        </button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span>
                                                        	<a href="root_deletecourse.action?coId=${CourseInfo.coId}">
                                                        		 删除
                                                        	</a> 
                                                        </button>
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
                                            		<li class="am-active"><a href="ssm_paging.action?page=${x}&type=2">${x}</a></li>
                                            	</c:if>
                                            	<c:if test="${page != x}">
                                            		<li><a href="ssm_paging.action?page=${x}&type=2">${x}</a></li>
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
