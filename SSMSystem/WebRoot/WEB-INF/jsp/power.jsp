<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
    
  </head>
  
  <body>
  ${msg}
   <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li class="am-active">权限管理</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>${sign}权限管理
                    </div>
                </div>
                <div class="tpl-block">
                    <ul class="tpl-task-list">
                    <c:forEach items="${course}" var="A" begin="${begin}" end="${end}" varStatus="status">
                        <li>
                            <div class="task-title">
                            	${status.index + 1}
                            	.&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="task-title-sp">${A.mTitle}</span>
                                <span class="label label-sm label-warning">${A.mUrl}</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <c:if test="${A.rStatus == 1}">
                                	<span class="label label-sm label-default">已启用</span>
                                </c:if>
                                <c:if test="${A.rStatus == 0}">
                                	<span class="label label-sm label-danger">已禁用</span>
                                </c:if>
                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                     <c:if test="${A.rStatus == 1}">
                                		<li>
                                            <a href="#" onclick="alert('已启用')">
                                                <i class="am-icon-check"></i>启用</a>
                                        </li>
                                        <li>
                                            <a href="root_chulipower.action?now=0&rId=${A.rId}">
                                                <i class="am-icon-pencil"></i>禁用</a>
                                        </li>
                                	 </c:if>
                                	 <c:if test="${A.rStatus == 0}">
                                		<li>
                                            <a href="root_chulipower.action?now=1&rId=${A.rId}">
                                                <i class="am-icon-check"></i>启用</a>
                                        </li>
                                        <li>
                                            <a href="#" onclick="alert('已禁用')">
                                                <i class="am-icon-pencil"></i>禁用</a>
                                        </li>
                                	 </c:if>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </c:forEach>   
                   </ul>
                </div>
                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <c:forEach var="x" begin="1" end="${course_allpage}">
                                            	<c:if test="${page == x}">
                                            		<li class="am-active"><a href="ssm_paging.action?page=${x}&type=3">${x}</a></li>
                                            	</c:if>
                                            	<c:if test="${page != x}">
                                            		<li><a href="ssm_paging.action?page=${x}&type=3">${x}</a></li>
                                            	</c:if>
											</c:forEach>
                                            <li class="am-disabled"><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
             </div>
          </div>
  </body>
</html>
