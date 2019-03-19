package com.soya.system.domain;

public class SystemInfo {
	private String path;
	private long freeSpace;
	private long usableSpace;
	private long totalSpace;
	private String percent;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public long getFreeSpace() {
		return freeSpace;
	}

	public void setFreeSpace(long freeSpace) {
		this.freeSpace = freeSpace;
	}

	public long getUsableSpace() {
		return usableSpace;
	}

	public void setUsableSpace(long usableSpace) {
		this.usableSpace = usableSpace;
	}

	public long getTotalSpace() {
		return totalSpace;
	}

	public void setTotalSpace(long totalSpace) {
		this.totalSpace = totalSpace;
	}

	public String getPercent() {
		return percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	public SystemInfo(String path, long freeSpace, long usableSpace, long totalSpace, String percent) {
		this.path = path;
		this.freeSpace = freeSpace;
		this.usableSpace = usableSpace;
		this.totalSpace = totalSpace;
		this.percent = percent;
	}

	public SystemInfo() {
		super();
	}
}
