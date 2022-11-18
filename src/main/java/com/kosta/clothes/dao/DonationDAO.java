package com.kosta.clothes.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kosta.clothes.bean.Donation;

@Mapper
@Repository
public interface DonationDAO {

	List<Donation> selectDonation() throws Exception; //기부업체 정보 조회
	//List<Donation> selectOneDonation(String store,String good, String story ) throws Exception; //기부업체 일부정보 조회

}
