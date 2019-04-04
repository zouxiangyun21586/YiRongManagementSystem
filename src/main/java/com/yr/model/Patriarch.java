package com.yr.model;

/**
 * 家长实体类 
 * @author zxy-un
 * 2019年4月2日 下午3:18:39
 */
public class Patriarch {
	private int parId;
	private int parTell;
	private String parName;

	public int getParId() {
		return parId;
	}

	public void setParId(int parId) {
		this.parId = parId;
	}

	public int getParTell() {
		return parTell;
	}

	public void setParTell(int parTell) {
		this.parTell = parTell;
	}

	public String getParName() {
		return parName;
	}

	public void setParName(String parName) {
		this.parName = parName;
	}

	@Override
	public String toString() {
		return "Patriarch [parId=" + parId + ", parTell=" + parTell + ", parName=" + parName + "]";
	}

}
