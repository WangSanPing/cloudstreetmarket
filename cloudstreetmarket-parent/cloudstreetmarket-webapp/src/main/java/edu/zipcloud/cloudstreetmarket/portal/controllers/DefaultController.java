package edu.zipcloud.cloudstreetmarket.portal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 首页
 * @ClassName DefaultController
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangx
 * @Date 2017年11月2日 下午1:12:16
 * @version 1.0.0
 */
@Controller
public class DefaultController
{
	@RequestMapping(value = "/*",method={RequestMethod.GET,RequestMethod.HEAD})
	public String FallBack()
	{
		return "index";
	}
}