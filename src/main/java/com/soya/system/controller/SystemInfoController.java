package com.soya.system.controller;

import com.soya.system.domain.SystemInfo;
import com.soya.system.service.IepSystemInfoService;
import org.ljdp.component.result.GeneralResult;
import org.ljdp.component.result.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

import java.util.List;

@Controller
@RequestMapping("/system/SystemInfo")
public class SystemInfoController{
	private final static String PAGE_QUERY = "system/monitor";
	private final static String PAGE_QUERY2 = "system/webCode";
   @Autowired
	private IepSystemInfoService iepSystemInfoService;
	@ApiIgnore
	@RequestMapping(value = {""})
	public String mainPage(){
		return PAGE_QUERY;
	}

	@ApiIgnore
	@RequestMapping(value = {"/webCode"})
	public String webCode(){
		return PAGE_QUERY2;
	}

	@RequestMapping(value="/query",method= RequestMethod.POST)
	@ResponseBody
	public Result doQuery(){
		Result result = new GeneralResult(true);
		List<SystemInfo> systemInfoList=this.iepSystemInfoService.getSysInfo();
		result.setData(systemInfoList);
		result.setSuccess(true);
		return  result;
	}
}
