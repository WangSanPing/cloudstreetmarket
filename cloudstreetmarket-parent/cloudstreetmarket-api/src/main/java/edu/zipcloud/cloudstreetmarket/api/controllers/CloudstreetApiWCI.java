package edu.zipcloud.cloudstreetmarket.api.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.WebContentInterceptor;

/**
 * 拦截器
 * 
 * @ClassName CloudstreetApiWCI
 * @Description 拦截器
 * @author wangx
 * @Date 2017年11月9日 下午6:37:45
 * @version 1.0.0
 */
public class CloudstreetApiWCI extends WebContentInterceptor
{
	public CloudstreetApiWCI()
	{
		setRequireSession(false);
		setCacheSeconds(0);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception
	{

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception
	{

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws ServletException
	{
		return true;
	}

}
