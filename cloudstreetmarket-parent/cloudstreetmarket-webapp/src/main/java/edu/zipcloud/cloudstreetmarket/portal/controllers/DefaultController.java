package edu.zipcloud.cloudstreetmarket.portal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.zipcloud.cloudstreetmarket.core.services.ICommunityService;
import edu.zipcloud.cloudstreetmarket.core.services.IMarketService;

/**
 * 首页
 * 
 * @ClassName DefaultController
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangx
 * @Date 2017年11月2日 下午1:12:16
 * @version 1.0.0
 */
@Controller
public class DefaultController
{
	@Autowired
	private IMarketService marketService;

	@Autowired
	private ICommunityService communityService;

	@RequestMapping(value = "/*", method =
	{ RequestMethod.GET, RequestMethod.HEAD })
	public String FallBack(Model model)
	{
		model.addAttribute("dailyMarketActivity", marketService.getLastDayMarketActivity("GDAXI"));
		model.addAttribute("dailyMarketsActivity", marketService.getLastDayMarketsOverview());
		model.addAttribute("recentUserActivity", communityService.getLastUserPublicActivity(10));
		return "index";
	}
}
