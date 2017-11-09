package edu.zipcloud.cloudstreetmarket.portal.controllers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.StringJoiner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;

@Controller
@RequestMapping("/info")
public class InfoTagController extends CloudstreetWebAppWCI
{
	@Autowired
	private WebApplicationContext webAppContext;

	private final static LocalDateTime startDateTime = LocalDateTime.now();
	private final static DateTimeFormatter DT_FORMATTER = DateTimeFormatter.ofPattern("EEE,D MMM yyyy h:mm a");

	@RequestMapping("/server")
	@ResponseBody
	public String infoTagServer()
	{
		String str = new StringJoiner("<br>").add("-------------------------------")
				.add("Server:" + webAppContext.getServletContext().getServerInfo())
				.add("Start date :" + startDateTime.format(DT_FORMATTER))
				.add("Version:" + webAppContext.getBean("webAppVersion")).add("-------------------------------")
				.toString();

		return str;
	}

	@RequestMapping("/helloHandler/{item}")
	@ResponseBody
	public String HelloController(@PathVariable(value = "item") String item, @RequestParam(value = "item1") String sss)
	{
		return "item :" + item + "--------------" + "item1 :" + sss;
	}

}
