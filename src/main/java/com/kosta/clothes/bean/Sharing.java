package com.kosta.clothes.bean;

import java.sql.Date;

public class Sharing {
	private Integer sno;
	private String stitle;
	private String scontent;
	private String sstatus;
	private String sfileids;
	private String sdealType;
	private Long ai;
	private String addressCity;
	private String addressTown;
	private Long likes;
	private Integer userno;
	private Date regDate;
	public Integer getSno() {
		return sno;
	}
	public void setSno(Integer sno) {
		this.sno = sno;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getSstatus() {
		return sstatus;
	}
	public void setSstatus(String sstatus) {
		this.sstatus = sstatus;
	}
	public String getSfileids() {
		return sfileids;
	}
	public void setSfileids(String sfileids) {
		this.sfileids = sfileids;
	}
	public String getSdealType() {
		return sdealType;
	}
	public void setSdealType(String sdealType) {
		this.sdealType = sdealType;
	}
	public Long getAi() {
		return ai;
	}
	public void setAi(Long ai) {
		this.ai = ai;
	}
	public String getAddressCity() {
		return addressCity;
	}
	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}
	public String getAddressTown() {
		return addressTown;
	}
	public void setAddressTown(String addressTown) {
		this.addressTown = addressTown;
	}
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public Integer getUserno() {
		return userno;
	}
	public void setUserno(Integer userno) {
		this.userno = userno;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Sharing() {
		super();
	}
	public Sharing(Integer sno, String stitle, String scontent, String sstatus, String sfileids, String sdealType,
			Long ai, String addressCity, String addressTown, Long likes, Integer userno, Date regDate) {
		super();
		this.sno = sno;
		this.stitle = stitle;
		this.scontent = scontent;
		this.sstatus = sstatus;
		this.sfileids = sfileids;
		this.sdealType = sdealType;
		this.ai = ai;
		this.addressCity = addressCity;
		this.addressTown = addressTown;
		this.likes = likes;
		this.userno = userno;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "Sharing [sno=" + sno + ", stitle=" + stitle + ", scontent=" + scontent + ", sstatus=" + sstatus
				+ ", sfileids=" + sfileids + ", sdealType=" + sdealType + ", ai=" + ai + ", addressCity=" + addressCity
				+ ", addressTown=" + addressTown + ", likes=" + likes + ", userno=" + userno + ", regDate=" + regDate
				+ "]";
	}
		
	
		
}
