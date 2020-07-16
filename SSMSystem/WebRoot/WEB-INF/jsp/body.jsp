<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/echarts.min.js"></script>
</head>

<body>


    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand" style = "width:235px;height:100px">
            <a href="ssm_index.action">
            	&nbsp;
                <img src="image/head_school.png" style = "width:60px;height:60px">
            </a>
            <font size="4"><b>GDP教务系统</b></font>
        </div>
        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">

                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick">${username}</span><span class="tpl-header-list-user-ico"> 
                        <c:if test="${user.userType != 2}">
                        	<img src="image/usericon.png">
                        </c:if>
                        <c:if test="${user.userType == 2}">
                        	<img src="image/root.png">
                        </c:if>
                        </span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="ssm_person_data.action"><span class="am-icon-bell-o"></span> 资料</a></li>
                        <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                        <li><a href="ssm_exit.action"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </header>







    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                	功能列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="ssm_personindex.action" class="nav-link active">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    
                 <c:if test="${user.userType == 0}">
                    <li class="tpl-left-nav-item">
                        <a href="#" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>选课系统</span>
	                       <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                            	<a href="ssm_allcourse.action?sign=0">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>全部课程</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="ssm_allcourse.action?sign=1">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>已选课程</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>我的课程</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                                <a href="ssm_Timetable.action">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>我的课表</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="ssm_myreport.action">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>我的成绩单</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>
                </c:if>
                
                <c:if test="${user.userType == 1}">
					<li class="tpl-left-nav-item">
                        <a href="#" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>选课系统</span>
	                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                                <a href="ssm_teacherselection.action">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>选课情况</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>我的课程</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                                <a href="ssm_Timetable.action">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>我的课表</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="ssm_Timetable.action?sign=6">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>录入成绩</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>
                </c:if>
				
				<c:if test="${user.userType == 2}">
					<li class="tpl-left-nav-item">
                        <a href="#" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>选课系统</span>
	                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                            	<a href="root_opencourse.action?sign=0">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>开启入口</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="ssm_allcourse.action?sign=0">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>课程信息</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="root_opencourse.action?sign=1">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>关闭入口</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>
					
					<li class="tpl-left-nav-item">
                        <a href="#" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>成绩系统</span>
	                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                            	<a href="root_opencourse.action?sign=2">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>开启入口</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="root_opencourse.action?sign=3">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>关闭入口</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>
					
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>用户管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                        </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                                <a href="root_shenheregister.action">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>注册审核</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="root_usercenter.action?sign=0">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>用户中心</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="#" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-calendar"></i>
                            <span>权限管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
	                    </a>
	                        <ul class="tpl-left-nav-sub-menu" style="display: none;">
	                            <li>
	                                <a href="root_power.action?sign=0">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>学生权限</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                                <a href="root_power.action?sign=1">
	                                    <i class="am-icon-angle-right"></i>
	                                    <span>教师权限</span>
	                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
	                                </a>
	                            </li>
	                        </ul>
                    </li>
                    
                </c:if>
				
                    <li class="tpl-left-nav-item">
                        <a href="ssm_person_data.action" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>个人资料</span>
                        </a>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="ssm_exit.action" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-power-off"></i>
                            <span>注销</span>

                        </a>
                    </li>
                </ul>
            </div>
        </div>


    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/iscroll.js"></script>
    <script src="assets/js/app.js"></script>
</body>

</html>
