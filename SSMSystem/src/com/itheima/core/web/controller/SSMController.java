package com.itheima.core.web.controller;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.itheima.core.po.*;
import com.itheima.core.service.*;

@Controller
public class SSMController {
	 @Autowired 
	 private UserService userService;
	 @Autowired
	 private CourseService courseService;
	 @Autowired
	 private DetailService detailService;
	 @Autowired
	 private LogService logService;
	 @Autowired
	 private RootService rootService;
	 @Autowired
	 private RoleService roleService;
	 @Autowired
	 private MenuService menuService;
	 //进入主页请求
	 @RequestMapping(value="/ssm_index.action")
	 public String ssm_index(HttpServletRequest request,Model model){
		 HttpSession s=request.getSession();
		 user_info user=(user_info) s.getAttribute("user");
		 if(user != null){
			 if(user.getUserType() == 0){
				 model.addAttribute("username", user.getUserName() + " 同学"); 
			 }else if(user.getUserType() == 1){
				 model.addAttribute("username", user.getUserName() + " 老师"); 
			 }else if(user.getUserType() == 2){
				 model.addAttribute("username", user.getUserName() + " 管理员"); 
			 }
			 
		 }else{
			 model.addAttribute("username", null);
		 }
		 return "index";
	 }
	 //进入登陆页面
	 @RequestMapping(value="/ssm_login.action")
	 public String ssm_login(HttpServletRequest request,Model model){  
		return "login";
	 }
	 //登录的表单提交
	 @RequestMapping(value="/ssm_checklogin.action")
	 public String ssm_checklogin(@RequestParam("usercode") String usercode1,@RequestParam("password") String password,HttpServletRequest request,Model model,HttpSession session){
		 	HttpSession s=request.getSession();
		 	String radio = request.getParameter("radio");
		 	Integer usercode = Integer.parseInt(usercode1);
		 	user_info user = new user_info();
		 	List<role_info> role ;
		 	menu_info menu_info = new menu_info();
		 	List<menu_info> menu = new ArrayList();
		 	if(radio.equals("0")){
		 		user = userService.selectByPrimaryKey(usercode,1);
		 		if(user != null){
			 		if(user.getUserPassword().equals(password)){
			 			role = this.roleService.selectRole(user.getUserType(),1);
			 			//System.out.println("role"+role.size());
			 			for(int i=0;i<role.size();i++){
			 				menu_info = this.menuService.select(role.get(i).getmId(),1);
			 				menu.add(menu_info);
			 			}
			 			session.setAttribute("menu", menu);
			 			session.setAttribute("user", user);
				 		return "redirect:/ssm_personindex.action";
			 		}
			 		model.addAttribute("msg", "<script type='text/javascript'>alert('密码错误，登录失败！')</script>");
			 		return "login";
			 	}
		 	}else{
		 		user = this.rootService.selectByPrimaryKey(usercode);
		 		if(user != null){
			 		if(user.getUserPassword().equals(password)){
			 			role = this.roleService.selectRole(user.getUserType(),1);
			 			for(int i=0;i<role.size();i++){
			 				menu_info = this.menuService.select(role.get(i).getmId(),1);
			 				menu.add(menu_info);
			 			}
			 			session.setAttribute("menu", menu);
			 			session.setAttribute("user", user);
				 		return "redirect:/ssm_personindex.action";
			 		}
			 		model.addAttribute("msg", "<script type='text/javascript'>alert('密码错误，登录失败！')</script>");
			 		return "login";
			 	}
		 	}
		 	model.addAttribute("msg", "<script type='text/javascript'>alert('登录失败！')</script>");
	 		return "login";
	 }
	//退出登录
		 @RequestMapping(value="/ssm_exit.action")
		 public String ssm_exit(HttpServletRequest request,Model model){
			  HttpSession s=request.getSession(true);
			  s.invalidate();
			  model.addAttribute("username", null);
			return "redirect:/ssm_index.action";
		 } 
	 //进入注册请求
	 @RequestMapping(value="/ssm_registerinto.action")
	 public String ssm_registerinto(HttpServletRequest request,Model model){
			return "register";
	 }
	 //注册
	 @RequestMapping(value="/ssm_register.action")
	 public String ssm_register(@RequestParam("name") String name,@RequestParam("uploadfile") List<MultipartFile> uploadfile,
			 @RequestParam("type") String type,@RequestParam("school_name") String school_name,@RequestParam("school_code") String school_code,
			 @RequestParam("major") String major,@RequestParam("classroom") String classroom,@RequestParam("usercode") String usercode,
			 @RequestParam("password") String password,@RequestParam("sex") String sex,HttpServletRequest request,Model model){
		 	 String sign = request.getParameter("sign");
		 	 String newFilename = null;
		 	 user_info user = new user_info();
		 	 user_info A = this.userService.selectByPrimaryKey(Integer.parseInt(usercode), 1);
		 if(A == null){
		 	if(!uploadfile.isEmpty() && uploadfile.size() > 0)
			{
				for(MultipartFile file : uploadfile)
				{
					String originalFilename = file.getOriginalFilename();
					String dirpath = "E:\\javaee\\MyEclipse 10\\SSMSystem\\WebRoot\\image\\"+usercode;
					File filepath = new File(dirpath);
					if(!filepath.exists())
						filepath.mkdirs();
				    newFilename = usercode + "_" + UUID.randomUUID() + "_" + originalFilename;
					String path ="E:/javaee/MyEclipse 10/SSMSystem/WebRoot/image/"+usercode+"/"+newFilename;
					File newFile=new File(path);
					try
					{
						file.transferTo(newFile);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		}
			 String image = "image/" + usercode + "/" + newFilename;
			 user.setUserCode(Integer.parseInt(usercode));
		 	 user.setSchoolCode(school_code);
		 	 user.setSchoolName(school_name);
		 	 user.setUserClassroom(classroom);
		 	 user.setUserImage(image);
		 	 user.setUserMajor(major);
		 	 user.setUserName(name);
		 	 user.setUserPassword(password);
		 	 user.setUserSex(Integer.parseInt(sex));
		 	 if(sign.equals("1"))
		 		user.setUserStatus(1);
		 	 else
		 		user.setUserStatus(0);
		 	 user.setUserType(Integer.parseInt(type));
		 	 int flag = 0;
		 	 flag = userService.insert(user);
		 	 if(flag <= 0){
		 		model.addAttribute("msg", "<script type='text/javascript'>alert('注册失败！')</script>");
		 		return "register";
		 	 }
		 if(sign.equals("1")){
			 	model.addAttribute("msg", "<script type='text/javascript'>alert('添加用户成功！')</script>");
		 		return "insertuser";
		 }
		 model.addAttribute("msg", "<script type='text/javascript'>alert('注册成功，等待管理员审核！')</script>");
	 	 return "register";
		 }
		 model.addAttribute("msg", "<script type='text/javascript'>alert('已存在该用户，注册失败！')</script>");
	 	 return "register";
	 }  
	//进入个人中心首页
		 @RequestMapping(value="/ssm_personindex.action")
		 public String ssm_personindex(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 user_info user=(user_info) s.getAttribute("user");
				 if(user.getUserType() == 0){
					 model.addAttribute("username", user.getUserName() + " 同学"); 
					 s.setAttribute("username", user.getUserName() + " 同学");
				 }else if(user.getUserType() == 1){
					 model.addAttribute("username", user.getUserName() + " 老师"); 
					 s.setAttribute("username", user.getUserName() + " 老师");
				 }else if(user.getUserType() == 2){
					 model.addAttribute("username", user.getUserName() + " 管理员"); 
					 s.setAttribute("username", user.getUserName() + " 管理员");
				 }
				 List<log_info> log = this.logService.selectAll();
				 model.addAttribute("log", log);
				 model.addAttribute("user", user);
				 model.addAttribute("msg", s.getAttribute("msg"));
				 s.removeAttribute("msg");
				 return "personindex";
		 }
	    //进入个人资料
		 @RequestMapping(value="/ssm_person_data.action")
		 public String ssm_person_data(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 user_info user=(user_info) s.getAttribute("user");
				 model.addAttribute("user", user);
				 model.addAttribute("username", s.getAttribute("username"));
				return "person_data";
		 }
		//进入选课系统
		 @RequestMapping(value="/ssm_allcourse.action")
		 public String ssm_allcourse(HttpServletRequest request,Model model){
			 	String title = request.getParameter("title");
			 	String keyword = request.getParameter("keyword");
			 	String sign = request.getParameter("sign");
			 	int course_count = 0;
				int course_allpage = 0;
				String address = null;
				course_info course_info = new course_info();
				course_detail_info detail_info = new course_detail_info();
				List<course_info> course = new ArrayList();
				List<course_detail_info> detail = null;
				HttpSession s=request.getSession();
				user_info user=(user_info) s.getAttribute("user");
			if(sign.equals("0")){
				if(title != null){
			 		if(title.equals("2")){
				 		course_info.setCoCode(keyword);
				 	}else if(title.equals("3")){
				 		course_info.setCoName(keyword);
				 	}else if(title.equals("4")){
				 		course_info.setTeacherName(keyword);
				 	}else if(title.equals("5")){
				 		course_info.setCoCredit(Float.parseFloat(keyword));
				 	}else if(title.equals("6")){
				 		course_info.setCoStatus(Integer.parseInt(keyword));
				 	}
			 	}
				if(user.getUserType() != 2){
					course_info.setCoStatus(1);
					address = "allcourse";
				}else{
					address = "coursecenter";
				}
				course = courseService.selectCourse(course_info);
			    course_count = courseService.selectCount(course_info);
			    s.setAttribute("kt", course_count);
			}else if(sign.equals("1")){
				detail_info.setStudentId(user.getUserCode());
				detail_info.setDeStatus(0);
				detail = detailService.selectMycourse(detail_info);
				course_count = detailService.selectstudent(detail_info);
				int coId = -1;
				for(int i=0;i<course_count;i++){
					coId = detail.get(i).getCoId();
					course_info = courseService.selectByPrimaryKey(coId);
					course.add(course_info);
				}
				List<course_info> course1 = new ArrayList();
				if(title != null){
			 		if(title.equals("2")){
				 		for(int k=0;k<course_count;k++){
				 			if(course.get(k).getCoCode().equals(keyword)){
				 				course1.add(course.get(k));
				 			}
				 		}
				 		course = course1;
						course_count = course1.size();
				 	}else if(title.equals("3")){
				 		for(int k=0;k<course_count;k++){
				 			if(course.get(k).getCoName().equals(keyword)){
				 				course1.add(course.get(k));
				 			}
				 		}
				 		course = course1;
						course_count = course1.size();
				 	}else if(title.equals("4")){
				 		for(int k=0;k<course_count;k++){
				 			if(course.get(k).getTeacherName().equals(keyword)){
				 				course1.add(course.get(k));
				 			}
				 		}
				 		course = course1;
						course_count = course1.size();
				 	}else if(title.equals("5")){
				 		for(int k=0;k<course_count;k++){
				 			if(course.get(k).getCoCredit().equals(keyword)){
				 				course1.add(course.get(k));
				 			}
				 		}
				 		course = course1;
						course_count = course1.size();
				 	}
				}
				s.setAttribute("detail", detail);
				address = "mycourse";
			}
				if(course_count % 10 == 0){
					course_allpage = course_count / 10;
				}else{
					course_allpage = (course_count / 10) + 1;
				}
				s.setAttribute("course", course);
				model.addAttribute("course", course);
				s.setAttribute("course_allpage", course_allpage);
				s.setAttribute("course_count", course_count);
				model.addAttribute("course_count",course_count);
				model.addAttribute("course_allpage", course_allpage);
				model.addAttribute("begin", 0);
				model.addAttribute("end", 9);
				model.addAttribute("page", 1);
				if(course.size() == 0 && (Integer)s.getAttribute("kt") <= 0){
					 model.addAttribute("msg", "<script type='text/javascript'>alert('选课系统还没开放！')</script>");
				 }
				s.removeAttribute("msg");
				return address;
		 }
		//分页
		 @RequestMapping(value="/ssm_paging.action")
		 public String ssm_paging(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 int begin,end;
				 int page = Integer.parseInt(request.getParameter("page"));
				 int type = Integer.parseInt(request.getParameter("type"));
				 String address = "";
					 if(type == 0)
						 address = "allcourse";
					 else if(type == 1)
						 address = "mycourse";
					 else if(type == 2)
						 address = "coursecenter";
					 else if(type == 3)
						 address = "power";
					 List<course_info> course = (List<course_info>) s.getAttribute("course");
					 int course_allpage = (Integer) s.getAttribute("course_allpage");
					 int course_count = (Integer) s.getAttribute("course_count");
					 if(page == course_allpage){
						 begin = 10*(page-1);
						 end = course_count - 1;
					 }else{
						 begin = 10*(page-1);
						 end = 10*page-1;
					 }
					 model.addAttribute("course", course);
					 model.addAttribute("course_count",course_count);
					 model.addAttribute("course_allpage", course_allpage);
					 model.addAttribute("begin", begin);
					 model.addAttribute("end", end);
					 model.addAttribute("page", page);
						return address;
		 }
		 //选课
		 @RequestMapping(value="/ssm_choose_course.action")
		 public String ssm_choose_course(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 int course_allpage = (Integer) s.getAttribute("course_allpage");
				 int course_count = (Integer) s.getAttribute("course_count");
				 user_info user=(user_info) s.getAttribute("user");
				 int index = Integer.parseInt(request.getParameter("index"));
				 List<course_info> course = (List<course_info>) s.getAttribute("course");
				 course_info course_info = course.get(index);
				 course_detail_info course_detail_info = new course_detail_info();
				 course_detail_info.setCoId(course_info.getCoId());
				 course_detail_info.setStudentId(user.getUserCode());
				 int flag3 = detailService.selectstudent(course_detail_info);
				 String a = null;
				 model.addAttribute("course", course);
				 model.addAttribute("course_count",course_count);
				 model.addAttribute("course_allpage", course_allpage);
				 model.addAttribute("begin", 0);
				 model.addAttribute("end", 9);
				 model.addAttribute("page", 1);
				 if(flag3 == 0){
					 course_detail_info.setStudentName(user.getUserName());
					 course_detail_info.setTeacherId(course_info.getTeacherId());
					 course_detail_info.setTeacherName(course_info.getTeacherName());
					 int flag1 = detailService.insertSelective(course_detail_info);
					 int coSelected = course_info.getCoSelected() + 1;
					 course_info.setCoSelected(coSelected);
					 int flag2 = courseService.updateByPrimaryKeySelective(course_info);
					 if(flag1 <= 0){
						 a = "<script type='text/javascript'>alert('操作失败!')</script>";
						 model.addAttribute("msg", a);
						 return "allcourse";
					 }	 
					 if(flag2 <= 0){
						 a = "<script type='text/javascript'>alert('操作失败!')</script>";
						 model.addAttribute("msg", a);
						 return "allcourse";
					 }	 
					 a = "<script type='text/javascript'>alert('操作成功!')</script>";
					 model.addAttribute("msg", a);
					 return "allcourse";
				 }
				 a = "<script type='text/javascript'>alert('您已选择该课程!操作失败!')</script>";
				 model.addAttribute("msg", a);
				 return "allcourse";
		 }
		//退课
		 @RequestMapping(value="/ssm_delete_course.action")
		 public String ssm_delete_course(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 int course_allpage = (Integer) s.getAttribute("course_allpage");
				 int course_count = (Integer) s.getAttribute("course_count");
				 user_info user=(user_info) s.getAttribute("user");
				 int index = Integer.parseInt(request.getParameter("index"));
				 List<course_info> course = (List<course_info>) s.getAttribute("course");
				 List<course_detail_info> detail = (List<course_detail_info>) s.getAttribute("detail");
				 course_detail_info course_detail_info = detail.get(index);
				 course.remove(index);
				 s.setAttribute("course", course);
				 course_count = course_count -1;
				 s.setAttribute("course_count", course_count);
				 if(course_count % 10 == 0){
						course_allpage = course_count / 10;
				 }else{
						course_allpage = (course_count / 10) + 1;
				 }
				 s.setAttribute("course_allpage", course_allpage);
				 int deId = course_detail_info.getDeId();
				 int coId = course_detail_info.getCoId();
				 int flag = detailService.deleteByPrimaryKey(deId);
				 System.out.println(flag);
				 course_info course_info = new course_info();
				 course_info.setCoId(coId);
				 course_info course_info1 =this.courseService.selectByPrimaryKey(coId);
				 course_info.setCoSelected(course_info1.getCoSelected() - 1);
				 int flag2 = this.courseService.updateByPrimaryKeySelective(course_info);
				 String a = null;
				 if(flag == 0){
					 a = "<script type='text/javascript'>alert('操作失败!')</script>";
				 }else{
					 a = "<script type='text/javascript'>alert('操作成功!')</script>";
				 }
				 if(flag2 == 0){
					 a = "<script type='text/javascript'>alert('操作失败!')</script>";
				 }else{
					 a = "<script type='text/javascript'>alert('操作成功!')</script>";
				 }
				 model.addAttribute("msg", a);
				 model.addAttribute("course", course);
				 model.addAttribute("course_count",course_count);
				 model.addAttribute("course_allpage", course_allpage);
				 model.addAttribute("begin", 0);
				 model.addAttribute("end", 9);
				 model.addAttribute("page", 1);
				 return "mycourse";
		 }
		 //我的课表
		 @RequestMapping(value="/ssm_Timetable.action")
		 public String ssm_Timetable(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 user_info user=(user_info) s.getAttribute("user");
				 course_info course_info = new course_info();
				 course_detail_info detail_info = new course_detail_info();
				 List<course_info> course = new ArrayList();
				 List<course_info> course1 = new ArrayList();
				 List<course_info> course2 = new ArrayList();
				 List<course_info> course3 = new ArrayList();
				 List<course_info> course4 = new ArrayList();
				 List<course_info> course5 = new ArrayList();
			   	 List<course_detail_info> detail = null;
			   	 if(user.getUserType() == 0){
			   		detail_info.setStudentId(user.getUserCode());
			   	 }else {
			   		detail_info.setTeacherId(user.getUserCode()); 
			   	 }
				 detail_info.setDeStatus(0);
				 detail = detailService.selectCourse(detail_info);
				 int coId = -1;
				 for(int i=0;i<detail.size();i++){
					coId = detail.get(i).getCoId();
					course_info = courseService.selectByPrimaryKey(coId);
					if(course_info.getCoTime().indexOf("周一")>=0){
						course1.add(course_info);
					}else if(course_info.getCoTime().indexOf("周二")>=0){
						course2.add(course_info);
					}else if(course_info.getCoTime().indexOf("周三")>=0){
						course3.add(course_info);
					}else if(course_info.getCoTime().indexOf("周四")>=0){
						course4.add(course_info);
					}else if(course_info.getCoTime().indexOf("周五")>=0){
						course5.add(course_info);
					}
				 }
				 course.addAll(course1);
				 course.addAll(course2);
				 course.addAll(course3);
				 course.addAll(course4);
				 course.addAll(course5);
				 model.addAttribute("timetable", course);
				 String sign =request.getParameter("sign");
				 model.addAttribute("sign", sign);
				 model.addAttribute("type", user.getUserType());
				 return "timetable";
		 }
		 //选课情况
		 @RequestMapping(value="/ssm_teacherselection.action")
		 public String ssm_teacherselection(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 user_info user=(user_info) s.getAttribute("user");
				 course_info course_info = new course_info();
				 course_info.setTeacherId(user.getUserCode());
				 course_info.setCoStatus(1);
				 List<course_info> course = new ArrayList();
				 course = this.courseService.selectCourse(course_info);
				 if(course.size() == 0){
					 model.addAttribute("msg", "<script type='text/javascript'>alert('选课系统还没开放！')</script>");
					 return "selection";
				 }else{
					 model.addAttribute("selection", course);
					 return "selection"; 
				 }
		 }
		 //查看选课学生名单
		 @RequestMapping(value="/ssm_showStudent.action")
		 public String ssm_showStudent(HttpServletRequest request,Model model){
			 	 HttpSession s=request.getSession();
			 	 String sign = request.getParameter("sign");
			 	 String type = request.getParameter("type");
			 	 int coId = Integer.parseInt(request.getParameter("coId"));
			 	 String coName = request.getParameter("coName");
			 	 course_detail_info course_detail_info = new course_detail_info();
			 	 course_detail_info.setCoId(coId);
			 	 List<course_detail_info> detail = this.detailService.selectMycourse(course_detail_info);
			 	 Float score[] = new Float[detail.size()];
			 	 user_info user_info = new user_info();
				 List<user_info> user = new ArrayList();
			 	 for(int i=0;i<detail.size();i++){
			 		 user_info = this.userService.selectByPrimaryKey(detail.get(i).getStudentId(), 1);
			 		 score[i] = detail.get(i).getDeScore();
			 		 user.add(user_info);
			 	 }
			 	 int course_count = detail.size(), course_allpage = 0;
			 	if(course_count % 10 == 0){
					course_allpage = course_count / 10;
				}else{
					course_allpage = (course_count / 10) + 1;
				}
				s.setAttribute("course", user);
				model.addAttribute("course", user);
				model.addAttribute("score", score);
				s.setAttribute("course_allpage", course_allpage);
				s.setAttribute("course_count", course_count);
				model.addAttribute("course_count",course_count);
				model.addAttribute("course_allpage", course_allpage);
				model.addAttribute("begin", 0);
				model.addAttribute("end", 9);
				model.addAttribute("page", 1);
				model.addAttribute("coName", coName);
				model.addAttribute("type", sign);
				model.addAttribute("sign", type);
				model.addAttribute("coId", coId);
				 return "showStudent";
		 }
		 //我的成绩单
		@RequestMapping(value="/ssm_myreport.action")
		public String ssm_myreport(HttpServletRequest request,Model model){
				 HttpSession s=request.getSession();
				 user_info user=(user_info) s.getAttribute("user");
				 course_detail_info course_detail_info = new course_detail_info();
				 course_detail_info.setStudentId(user.getUserCode());
				 course_detail_info.setDeStatus(2);
				 List<course_detail_info> detail = new ArrayList();
				 List<report_info> report = new ArrayList();
				 detail = this.detailService.selectMycourse(course_detail_info);
				 course_info course_info = new course_info();
				 for(int i=0;i<detail.size();i++){
					 course_info = this.courseService.selectByPrimaryKey(detail.get(i).getCoId());
					 report_info report_info = new report_info();
					 report_info.setCoCode(course_info.getCoCode());
					 report_info.setCoCredit(course_info.getCoCredit());
					 report_info.setCoName(course_info.getCoName());
					 report_info.setScore(detail.get(i).getDeScore());
					 report_info.setTeacherName(course_info.getTeacherName());
					 report_info.setGpa((detail.get(i).getDeScore()/10)-5);
					 report.add(report_info);
				 }
				 model.addAttribute("myreport", report);
				 return "myreport";
		}
		//录入成绩
		@RequestMapping(value="/ssm_savescore.action")
		 public String ssm_savescore(HttpServletRequest request,Model model){
			 	 int coId = Integer.parseInt(request.getParameter("coId"));
			 	 int studentCode = Integer.parseInt(request.getParameter("studentCode"));
			 	 float descore = Float.parseFloat(request.getParameter("descore"));
			 	 course_detail_info course_detail_info = new course_detail_info();
			 	 course_detail_info.setCoId(coId);
			 	 course_detail_info.setDeScore(descore);
			 	 course_detail_info.setStudentId(studentCode);
			 	 int flag = this.detailService.updateScore(course_detail_info);
			 	 if(flag <= 0){
			 		 model.addAttribute("msg", "<script type='text/javascript'>alert('录入成绩操作失败！')</script>");
					 return "showStudent";
			 	 }
			 	 model.addAttribute("msg", "<script type='text/javascript'>alert('录入成绩操作成功！')</script>");
				 return "showStudent";
	 }
		
//管理员功能
		//开启选课入口
		@RequestMapping(value="/root_opencourse.action")
		 public String root_opencourse(HttpServletRequest request,Model model){
			     HttpSession s=request.getSession();
			     user_info user=(user_info) s.getAttribute("user");
				 String sign = request.getParameter("sign");
				 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				 String time = df.format(new Date());
				 log_info log = new log_info();
				 String content = null;
				 log.setLogTime(time);
				 log.setRootId(user.getUserCode());
				 int flag =  0;
				 if(sign.equals("0")){
					 return "opencourse";
				 }else if(sign.equals("1")){
					 int flag2 = this.courseService.caozuocourse(2, 1);
					 int flag10 = this.detailService.caozuodetail(1, 0);
					 if(flag2 <= 0 || flag10 <= 0){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('选课系统已关闭，操作失败！')</script>");
						 return "redirect:/ssm_personindex.action";
					 }
					 content = "2017-2018学年第二学期选课系统已关闭！";
					 log.setLogContent(content);
					 flag =  this.logService.insert(log);
					 if(flag <= 0 )
						 return "wrong";
					s.setAttribute("msg", "<script type='text/javascript'>alert('选课系统关闭成功！')</script>");
				   	return "redirect:/ssm_personindex.action";
				 }else if(sign.equals("2")){
					 int flag3 = this.courseService.caozuocourse(3, 2);
					 if(flag3 <= 0 ){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('成绩系统已开启，操作失败！')</script>");
						 return "redirect:/ssm_personindex.action";
					 }
					 content = "2017-2018学年第二学期选课成绩系统已开启，请各位老师尽快录入成绩！";
					 log.setLogContent(content);
					 flag =  this.logService.insert(log);
					 if(flag <= 0 )
						 return "wrong";
					 s.setAttribute("msg", "<script type='text/javascript'>alert('成绩系统开启成功！')</script>");
				   	 return "redirect:/ssm_personindex.action"; 
				 }
				 int flag4 = this.courseService.caozuocourse(4, 3);
				 if(flag4 <= 0 ){
					 s.setAttribute("msg", "<script type='text/javascript'>alert('成绩系统已关闭，操作失败！')</script>");
					 return "redirect:/ssm_personindex.action";
				 }
				 int flag5 = this.detailService.caozuodetail(2, 1);
				 if(flag5 <= 0 ){
					 s.setAttribute("msg", "<script type='text/javascript'>alert('成绩系统关闭失败！')</script>");
					 return "redirect:/ssm_personindex.action";
				 }
				 content = "2017-2018学年第二学期选课成绩系统已关闭！";
				 log.setLogContent(content);
				 flag =  this.logService.insert(log);
				 if(flag <= 0 )
					 return "wrong";
				 s.setAttribute("msg", "<script type='text/javascript'>alert('成绩系统关闭成功！')</script>");
			   	 return "redirect:/ssm_personindex.action"; 
		 }
		//开启选课入口form
				@RequestMapping(value="/root_opencourseform.action")
				 public String root_opencourseform(HttpServletRequest request,Model model){
						 HttpSession s=request.getSession();
						 user_info user=(user_info) s.getAttribute("user");
						 String year = request.getParameter("year");
						 String term = request.getParameter("term");
						 String start = request.getParameter("start");
						 String end = request.getParameter("end");
						 System.out.println(start);
						 String content = year + term + "选课系统已开启，起始时间："+start+" 截止日期："+end+" ，请大家尽快选课！";
						 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						 String time = df.format(new Date());
						 log_info log = new log_info();
						 log.setLogContent(content);
						 log.setLogTime(time);
						 log.setRootId(user.getUserCode());
						 int flag = this.logService.insert(log);
						 if(flag <= 0 )
							 return "wrong";
						 int flag2 = this.courseService.caozuocourse(1, 0);
						 if(flag2 <= 0 ){
							 s.setAttribute("msg", "<script type='text/javascript'>alert('选课系统已开启，操作失败！')</script>");
							 return "redirect:/ssm_personindex.action";
						 }
						 s.setAttribute("msg", "<script type='text/javascript'>alert('选课系统开启成功！')</script>");
						 return "redirect:/ssm_personindex.action";
				 }
				//进入课程信息
				@RequestMapping(value="/root_insertcourse.action")
				 public String root_coursecenter(HttpServletRequest request,Model model){
						 return "insertcourse";
				 }	
				//添加课程form
				@RequestMapping(value="/root_savecourse.action")
				 public String root_savecourse(HttpServletRequest request,Model model){
					String sign = request.getParameter("sign");
					String coCode = request.getParameter("coCode");
					String coName = request.getParameter("coName");
					String coCredit = request.getParameter("coCredit");
					String coNumber = request.getParameter("coNumber");
					String coTime = request.getParameter("coTime");
					String teacherCode = request.getParameter("teacherCode");
					String teacherName = request.getParameter("teacherName");
					String coAddress = request.getParameter("coAddress");
					course_info course_info = new course_info();
					course_info.setCoAddress(coAddress);
					course_info.setCoCode(coCode);
					course_info.setCoCredit(Float.parseFloat(coCredit));
					course_info.setCoName(coName);
					course_info.setCoNumber(Integer.parseInt(coNumber));
					course_info.setCoTime(coTime);
					course_info.setTeacherId(Integer.parseInt(teacherCode));
					course_info.setTeacherName(teacherName);
					int flag = 0;
					if(sign.equals("0")){
						flag = this.courseService.insertSelective(course_info);
						if(flag <= 0){
							model.addAttribute("msg", "<script type='text/javascript'>alert('添加课程失败')</script>");
							return "insertcourse";
						}
						model.addAttribute("msg", "<script type='text/javascript'>alert('添加课程成功')</script>");
						return "insertcourse";
					}else if(sign.equals("1")){
						int coStatus = Integer.parseInt(request.getParameter("coStatus"));
						course_info.setCoStatus(coStatus);
						int coId = Integer.parseInt(request.getParameter("coId"));
						course_info.setCoId(coId);
						flag = this.courseService.updateByPrimaryKeySelective(course_info);
						if(flag <= 0){
							model.addAttribute("msg", "<script type='text/javascript'>alert('修改课程失败')</script>");
							return "redirect:/ssm_personindex.action";
						}
						model.addAttribute("msg", "<script type='text/javascript'>alert('修改课程成功')</script>");
						return "redirect:/ssm_personindex.action";
					}
					return null;
				 }	
		         //删除课程
				@RequestMapping(value="/root_deletecourse.action")
				 public String root_deletecourse(HttpServletRequest request,Model model){
					 HttpSession s=request.getSession();	
					 int coId = Integer.parseInt(request.getParameter("coId"));
					 int flag = this.courseService.deleteByPrimaryKey(coId);
					 if(flag <= 0){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('课程删除失败！')</script>");
						 return "redirect:/ssm_personindex.action";
					 }
					 s.setAttribute("msg", "<script type='text/javascript'>alert('课程删除成功！')</script>");
					 return "redirect:/ssm_personindex.action";
				 }
				//修改课程
				@RequestMapping(value="/root_updatecourse.action")
				 public String root_updatecourse(HttpServletRequest request,Model model){
					 	 int index = Integer.parseInt(request.getParameter("index"));
					 	 HttpSession s=request.getSession();
					 	 List<course_info> course = (List<course_info>) s.getAttribute("course");
					 	 course_info course_info = course.get(index);
					 	 model.addAttribute("course_info", course_info);
					 	 model.addAttribute("msg", s.getAttribute("msg"));
					 	 s.removeAttribute("msg");
						 return "updatecourse";
				 }
				//进入审核用户页面
				@RequestMapping(value="/root_shenheregister.action")
				 public String root_shenheregister(HttpServletRequest request,Model model){
						 HttpSession s=request.getSession();
						 List<user_info> shenhe = this.userService.selectshenhe(0);
						 int course_count = shenhe.size(),course_allpage = 0;
						 if(course_count % 10 == 0){
								course_allpage = course_count / 10;
							}else{
								course_allpage = (course_count / 10) + 1;
							}
							s.setAttribute("course", shenhe);
							model.addAttribute("course", shenhe);
							s.setAttribute("course_allpage", course_allpage);
							s.setAttribute("course_count", course_count);
							model.addAttribute("course_count",course_count);
							model.addAttribute("course_allpage", course_allpage);
							model.addAttribute("begin", 0);
							model.addAttribute("end", 9);
							model.addAttribute("page", 1);
							model.addAttribute("msg", s.getAttribute("msg"));
						 	s.removeAttribute("msg");
						 return "shenheregister";
				 }
				//审核用户提交
				@RequestMapping(value="/root_shenheuser.action")
				 public String root_shenheuser(HttpServletRequest request,Model model){
						 HttpSession s=request.getSession();
						 int userCode = Integer.parseInt(request.getParameter("userCode"));
						 String sign = request.getParameter("sign");
						 user_info user_info = new user_info();
						 user_info.setUserCode(userCode);
						 if(sign.equals("0")){
							 user_info.setUserStatus(1);
						 }else if(sign.equals("1")){
							 user_info.setUserStatus(2);
						 }
						 int flag = this.userService.updateByPrimaryKeySelective(user_info);
						 if(flag <= 0){
							 s.setAttribute("msg", "<script type='text/javascript'>alert('审核用户操作失败！')</script>");
						 }else{
							 s.setAttribute("msg", "<script type='text/javascript'>alert('审核用户操作成功！')</script>");
						 }
						 return "redirect:/root_shenheregister.action";
				 }
				//用户中心
				@RequestMapping(value="/root_usercenter.action")
				 public String root_usercenter(HttpServletRequest request,Model model){
					    HttpSession s=request.getSession();
					    String sign = request.getParameter("sign");
					    String title = request.getParameter("title");
					    String keyword = request.getParameter("keyword");
					    int course_count = 0;
						int course_allpage = 0;
						int userType = 0;
						user_info user_info = new user_info();
						List<user_info> user = new ArrayList();
						user_info.setUserStatus(1);
						if(sign.equals("1")){
							if(title != null){
								if(title.equals("2")){
									user_info.setSchoolName(keyword);
								}else if(title.equals("3")){
									user_info.setSchoolCode(keyword);
								}else if(title.equals("4")){
									if(keyword.indexOf("学生") >= 0){
										userType = 0;
									}else if(keyword.indexOf("教师") >= 0 || keyword.indexOf("老师") >= 0){
										userType = 1;
									}	
									user_info.setUserType(userType);
								}else if(title.equals("5")){
									user_info.setUserCode(Integer.parseInt(keyword));
								}else if(title.equals("6")){
									user_info.setUserName(keyword);
								}else if(title.equals("7")){
									user_info.setUserMajor(keyword);
								}
							}
						}
						user = this.userService.userCenter(user_info);
						course_count = user.size();
						System.out.println(course_count);
						if(course_count % 10 == 0){
							course_allpage = course_count / 10;
						}else{
							course_allpage = (course_count / 10) + 1;
						}
						s.setAttribute("course", user);
						s.setAttribute("course_allpage", course_allpage);
						s.setAttribute("course_count", course_count);
						model.addAttribute("course", user);
						model.addAttribute("course_count",course_count);
						model.addAttribute("course_allpage", course_allpage);
						model.addAttribute("begin", 0);
						model.addAttribute("end", 9);
						model.addAttribute("page", 1);
						s.removeAttribute("msg");
						return "usercenter";
				 }
				//进入用户信息
				@RequestMapping(value="/root_insertuser.action")
				 public String root_insertuser(HttpServletRequest request,Model model){
						 return "insertuser";
				 }	
				//更新用户
				@RequestMapping(value="/root_updateuser.action")
				 public String root_updateuser(HttpServletRequest request,Model model){
					HttpSession s=request.getSession();
					int index = Integer.parseInt(request.getParameter("index"));
					List<user_info> user = (List<user_info>) s.getAttribute("course");
					user_info user_info = user.get(index);
					model.addAttribute("U", user_info);
					return "updateuser";
				 }	
				//更新用户form
				@RequestMapping(value="/root_updateuserfrom.action")
				 public String root_updateuserfrom(@RequestParam("name") String name,@RequestParam("sex") String sex,@RequestParam("userCode") String usercode,
						 @RequestParam("school_name") String school_name,@RequestParam("school_code") String school_code,
						 @RequestParam("major") String major,@RequestParam("classroom") String classroom, HttpServletRequest request,Model model){
						HttpSession s=request.getSession();
						user_info user_info = new user_info();
					 	user_info.setSchoolCode(school_code);
					 	user_info.setSchoolName(school_name);
					 	user_info.setUserClassroom(classroom);
					 	user_info.setUserCode(Integer.parseInt(usercode));
					 	user_info.setUserMajor(major);
					 	user_info.setUserName(name);
					 	user_info.setUserSex(Integer.parseInt(sex));
					 	int flag = this.userService.updateByPrimaryKeySelective(user_info);
					 	if(flag <= 0){
					 		s.setAttribute("msg", "<script type='text/javascript'>alert('编辑用户失败！')</script>");
						   	return "redirect:/ssm_personindex.action";
					 	}
					 	s.setAttribute("msg", "<script type='text/javascript'>alert('编辑用户成功！')</script>");
					   	return "redirect:/ssm_personindex.action";
				 }
				 //删除用户
				@RequestMapping(value="/root_deleteuser.action")
				 public String root_deleteuser(HttpServletRequest request,Model model){
					 HttpSession s=request.getSession();	
					 int userCode = Integer.parseInt(request.getParameter("userCode"));
					 int flag = this.userService.deleteByPrimaryKey(userCode);
					 if(flag <= 0){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('用户删除失败！')</script>");
						 return "redirect:/ssm_personindex.action";
					 }
					 s.setAttribute("msg", "<script type='text/javascript'>alert('用户删除成功！')</script>");
					 return "redirect:/ssm_personindex.action";
				 }
				//重置密码
				@RequestMapping(value="/root_resetpassword.action")
				 public String root_resetpassword(HttpServletRequest request,Model model){
					HttpSession s=request.getSession();	
					 int userCode = Integer.parseInt(request.getParameter("userCode"));
					 user_info user_info = new user_info();
					 user_info.setUserCode(userCode);
					 user_info.setUserPassword("123456");
					 int flag = this.userService.updateByPrimaryKeySelective(user_info);
					 if(flag <= 0){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('密码重置失败！')</script>");
						 return "redirect:/ssm_personindex.action";
					 }
					 s.setAttribute("msg", "<script type='text/javascript'>alert('密码重置成功！')</script>");
					 return "redirect:/ssm_personindex.action";
				 }
				//开启准备选课按钮
				@RequestMapping(value="/root_readycourse.action")
				 public String root_readycourse(HttpServletRequest request,Model model){
					 HttpSession s=request.getSession();	
					 int flag = this.courseService.caozuocourse(0, 4);
					 if(flag <= 0){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('准备选课操作失败！')</script>");
						 return "redirect:/ssm_personindex.action";
					 }
					 s.setAttribute("msg", "<script type='text/javascript'>alert('准备选课操作成功！')</script>");
					 return "redirect:/ssm_personindex.action";
				 }
				//进入权限管理
				@RequestMapping(value="/root_power.action")
				 public String root_power(HttpServletRequest request,Model model){
					 HttpSession s=request.getSession();	
					 Integer sign = Integer.parseInt(request.getParameter("sign"));
					 List<role_info> role ;
					 List<power_info> power = new ArrayList();
					 int course_count = 0,course_allpage = 0;
					 if(sign == 0){
						 model.addAttribute("sign", "学生");
					 }else {
						 model.addAttribute("sign", "教师");
					 }
					 role = this.roleService.select(sign);
			 		 for(int i=0;i<role.size();i++){
			 			 menu_info menu_info = new menu_info();
			 			 menu_info = this.menuService.select(role.get(i).getmId(),1);
			 			 if(menu_info != null){
			 				power_info power_info = new power_info();
			 				power_info.setmTitle(menu_info.getmTitle());
			 				power_info.setmUrl(menu_info.getmUrl());
			 				power_info.setrId(role.get(i).getrId());
			 				power_info.setrStatus(role.get(i).getrStatus());
			 				power.add(power_info);
			 			 }
			 		 }
			 		course_count = power.size();
			 		if(course_count % 10 == 0){
						course_allpage = course_count / 10;
					}else{
						course_allpage = (course_count / 10) + 1;
					}
			 		s.setAttribute("power_sign", sign);
					s.setAttribute("course", power);
					model.addAttribute("course", power);
					s.setAttribute("course_allpage", course_allpage);
					s.setAttribute("course_count", course_count);
					model.addAttribute("course_count",course_count);
					model.addAttribute("course_allpage", course_allpage);
					model.addAttribute("begin", 0);
					model.addAttribute("end", 9);
					model.addAttribute("page", 1);
					model.addAttribute("msg", s.getAttribute("msg"));
					s.removeAttribute("msg");
					return "power";
				 }
				//处理权限启用或禁用
				@RequestMapping(value="/root_chulipower.action")
				 public String root_chulipower(HttpServletRequest request,Model model){
					 HttpSession s=request.getSession();	
					 int now = Integer.parseInt(request.getParameter("now"));
					 int rId = Integer.parseInt(request.getParameter("rId"));
					 int flag = this.roleService.changeRstatus(now, rId);
					 if(flag <= 0){
						 s.setAttribute("msg", "<script type='text/javascript'>alert('权限操作失败！')</script>");
						 return "redirect:/root_power.action";
					 }
					 s.setAttribute("msg", "<script type='text/javascript'>alert('权限操作成功！')</script>");
					 return "redirect:/root_power.action?sign="+s.getAttribute("power_sign");
				 }
}
