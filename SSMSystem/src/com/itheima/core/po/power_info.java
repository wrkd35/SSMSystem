package com.itheima.core.po;

public class power_info {
	private Integer rId;

    private String mUrl;

    private String mTitle;

    private Integer rStatus;
    
    public Integer getrId() {
		return rId;
	}

	public String getmUrl() {
		return mUrl;
	}

	public String getmTitle() {
		return mTitle;
	}

	public Integer getrStatus() {
		return rStatus;
	}

	public void setrId(Integer rId) {
		this.rId = rId;
	}

	public void setmUrl(String mUrl) {
		this.mUrl = mUrl;
	}

	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}

	public void setrStatus(Integer rStatus) {
		this.rStatus = rStatus;
	}
}
