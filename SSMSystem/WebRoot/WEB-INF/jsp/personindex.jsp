<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<jsp:include page="body.jsp"/>
<head>
</head>

<body data-type="index">
${msg}
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	杭州电子科技大学信息工程学院
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">分类</a></li>
                <li class="am-active">内容</li>
            </ol>
            <div class="tpl-content-scope">
                <div class="note note-info">
                    <h3>杭州电子科技大学信息工程学院
                        <span class="close" data-close="note"></span>
                    </h3>
                    <p>
                    	学院秉承杭州电子科技大学“团结勤奋、求实创新”的优良传统，弘扬“团结、自强、求实、创新”的学院精神，本着“立足区域、贴近行业、服务浙江”的服务宗旨，确立“面向行业企业需求、产教融合校企合作”的发展理念，坚持以学生应用能力培养为导向，培养适合行业企业发展需要的高层次综合性职业技术人才，致力于建成省内有一定影响力的教学为主的多科性应用型大学。
                    </p>
                </div>
            </div>
			
			<div class="tpl-content-scope">
                <div class="note note-info">
                    <h3>通知
                        <span class="close" data-close="note"></span>
                    </h3>
                 <c:forEach items="${log}" var="log">
                    <ul class="tpl-task-list tpl-task-remind">
                    	<li>
                            <div class="cosB">
                               ${log.logTime}
                            </div>
                            <div class="cosA">
                                <span class="cosIco">
                        			<i class="am-icon-bell-o"></i>
                      			</span>
                                <span> 
                                	注意：${log.logContent}
								</span>
                            </div>
                        </li>
                    </ul>
                  </c:forEach>  
                </div>
            </div>
			
            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
            	<div class="tpl-table-images-content">
                	<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                    <div class="tpl-i-title">
                                        “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                    </div>
                    <a href="javascript:;" class="tpl-table-images-content-i">
                        <span class="tpl-table-images-content-i-shadow"></span>
                        <img src="image/school1.jpg" alt="">
                    </a>
                    <div class="tpl-table-images-content-block">
                        <div class="tpl-i-font">
                                                                      你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                        </div> 
             		</div>
              	</div>
           	</div>
           	<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
            	<div class="tpl-table-images-content">
                	<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                    <div class="tpl-i-title">
                                        “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                    </div>
                    <a href="javascript:;" class="tpl-table-images-content-i">
                        <span class="tpl-table-images-content-i-shadow"></span>
                        <img src="image/school2.jpg" alt="">
                    </a>
                    <div class="tpl-table-images-content-block">
                        <div class="tpl-i-font">
                                                                      你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                        </div> 
             		</div>
              	</div>
           	</div>
           	<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
            	<div class="tpl-table-images-content">
                	<div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                    <div class="tpl-i-title">
                                        “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                    </div>
                    <a href="javascript:;" class="tpl-table-images-content-i">
                        <span class="tpl-table-images-content-i-shadow"></span>
                        <img src="image/school3.jpg" alt="">
                    </a>
                    <div class="tpl-table-images-content-block">
                        <div class="tpl-i-font">
                                                                      你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                        </div> 
             		</div>
              	</div>
           	</div>
</body>

</html>
