package edu.zipcloud.cloudstreetmarket.portal.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.WebContentInterceptor;

/**
 * 拦截器
 * 
 * @ClassName CloudstreetWebAppWCI
 * @Description 拦截器
 * @author wangx
 * @Date 2017年11月9日 下午6:41:30
 * @version 1.0.0
 */
public class CloudstreetWebAppWCI extends WebContentInterceptor
{

	/**
	 * 通过该key可以拿到访问的路径
	 */
	private String pathKey = "org.springframework.web.servlet.HandlerMapping.pathWithinHandlerMapping";
	private String path = "";

	public CloudstreetWebAppWCI()
	{
		setRequireSession(false);
		setCacheSeconds(120);
		setSupportedMethods("GET", "POST", "OPTIONS", "HEAD");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws ServletException
	{
		// path = (String) request.getAttribute(pathKey);
		// if("/index".equals(path)){
		// return false;
		// }
		// System.out.println();
		// System.out.println("CloudstreetWebAppWCI.preHandle()");
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception
	{
		// System.out.println("CloudstreetWebAppWCI.postHandle()");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception
	{
		// System.out.println("CloudstreetWebAppWCI.afterCompletion()");
	}
}
