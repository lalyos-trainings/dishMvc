package com.irondish.mvc;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CoffeeController implements BeanNameAware{

	private Logger logger = LoggerFactory.getLogger(CoffeeController.class);
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	@RequestMapping("/coffee")
	public String minutesLeft(Model model) {
		
		long minutes = getMinutes();
		model.addAttribute("minutes", minutes);
		return "coffee";
	}

	private long getMinutes() {
		long ret = 0;
		try {
			Date breakTime = sdf.parse("2013-01-17 11:00");
			Date now = new Date();
			
			ret = (breakTime.getTime() - now.getTime()) / 60000;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return ret;
	}

	@Override
	public void setBeanName(String name) {
		
		logger.info("MYNAME is: " + name);
	}
}
