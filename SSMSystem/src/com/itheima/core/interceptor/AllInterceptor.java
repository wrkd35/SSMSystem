package com.itheima.core.interceptor;
import java.util.List;
import javax.servlet.http.*;
import com.itheima.core.po.menu_info;
import org.springframework.web.servlet.*;

public class AllInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		String url = request.getRequestURI();
		System.out.println(url);
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<menu_info> menu = (List<menu_info>) session.getAttribute("menu");
		if(menu != null){
			for(int i=0;i<menu.size();i++){
				if(url.indexOf(menu.get(i).getmUrl())>=0){
					return true;
				}
			}
			//System.out.println(menu.size());
			request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
			return false;
		}
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
		return false;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView model) throws Exception {
	}
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex)
			throws Exception {
	}
}
