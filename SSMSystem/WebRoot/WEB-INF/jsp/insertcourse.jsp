<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
                <li class="am-active">添加课程</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 添加
                    </div>
                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="root_savecourse.action?sign=0" method="post" name="form" onSubmit="return myCheck()">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">课程代码</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coCode" placeholder="课程代码">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">课程名称</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coName" placeholder="课程名称">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">学分</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coCredit" placeholder="学分">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">人数</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coNumber" placeholder="人数">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">上课时间</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coTime" placeholder="上课时间">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">教师工号</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="teacherCode" placeholder="教师工号">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">教师姓名</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="teacherName" placeholder="教师姓名">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">上课地点</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="coAddress" placeholder="上课地点">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">添加课程</button>
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
