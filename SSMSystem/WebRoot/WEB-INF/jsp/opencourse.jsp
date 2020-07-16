<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:include page="body.jsp"/>
  <head>
   <script type="text/javascript" src="js/judge.js"></script>
  </head>
  
  <body>
     <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="ssm_personindex.action" class="am-icon-home">首页</a></li>
                <li><a href="#">选课系统</a></li>
                <li class="am-active">开启</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>2017-2018学年 第二学期选课系统
                    </div>
                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="root_opencourseform.action" method="post" name="form" onSubmit="return myCheck()">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">学年 / School Year</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="year" placeholder="学年 / School Year">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">学期 / Semester</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="term" placeholder="学期 / Semester">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">开始时间 / Start Time</label>
                                    <div class="am-u-sm-9">
                                        <input type="date" name="start" placeholder="开始时间 / Start Time">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">结束时间 / End Time</label>
                                    <div class="am-u-sm-9">
                                        <input type="date" name="end" placeholder="结束时间 / End Time">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">开启选课</button>
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
