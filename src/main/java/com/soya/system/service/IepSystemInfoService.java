package com.soya.system.service;

import com.soya.system.domain.SystemInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional(readOnly = true, rollbackFor = {RuntimeException.class})
public class IepSystemInfoService {
	private static DecimalFormat DECIMALFORMAT = new DecimalFormat("#.##");
	public List<SystemInfo> getSysInfo() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentTIme = dateFormat.format(new Date());
		List<SystemInfo> systemInfoList = new ArrayList<SystemInfo>();
		// 获取磁盘分区列表
		File[] roots = File.listRoots();
		for (File file : roots) {
			SystemInfo systemInfo = new SystemInfo();
			long freeSpace = file.getFreeSpace();
			long totalSpace = file.getTotalSpace();
			long usableSpace = totalSpace - freeSpace;
			systemInfo.setPath(file.getPath());
			systemInfo.setFreeSpace(freeSpace / 1024 / 1024 / 1024);
			systemInfo.setUsableSpace(usableSpace / 1024 / 1024 / 1024);
			systemInfo.setTotalSpace(totalSpace / 1024 / 1024 / 1024);
			systemInfo.setPercent(DECIMALFORMAT.format(((double) usableSpace / (double) totalSpace) * 100) + "%");
			systemInfoList.add(systemInfo);
		}
		return systemInfoList;
	}
}
