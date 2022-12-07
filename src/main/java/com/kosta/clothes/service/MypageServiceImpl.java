package com.kosta.clothes.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.clothes.bean.PageInfo;
import com.kosta.clothes.bean.Sell;
import com.kosta.clothes.bean.Sharing;
import com.kosta.clothes.bean.Users;

import com.kosta.clothes.bean.Wapply;

import com.kosta.clothes.dao.MypageDAO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDAO mypageDAO;
	
	@Autowired
	ServletContext servletContext;

	@Override
	public List<Sell> getSellList(Integer userno, int page, PageInfo pageInfo) throws Exception {
		int listCount = mypageDAO.sellListCount(userno); //전체 데이터 개수 가져오기 (전체 게시글 수)
		System.out.println("row:"+listCount);
		int maxPage = (int)Math.ceil((double)listCount/10);  
		int startPage = page/10 * 10 + 1; 
		int endPage = startPage + 10 -1; 
		if(endPage > maxPage) { 
			endPage = maxPage; 
		}
		
		//pageInfo에 데이터 전달
		pageInfo.setPage(page); 
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		
		//검색한 페이지의 시작 페이지 값을 구한 변수 
		Integer row = (page - 1) * 10 + 1;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("row", row);
		return mypageDAO.getSellList(map);
	}


	@Override
	public List<Sharing> getSharingList(Integer userno, int spage, PageInfo spageInfo) throws Exception {
		int listCount = mypageDAO.sharingListCount(userno); //전체 데이터 개수 가져오기 (전체 게시글 수)
		int maxPage = (int)Math.ceil((double)listCount/10);  
		int startPage = spage/10 * 10 + 1; 
		int endPage = startPage + 10 -1; 
		if(endPage > maxPage) { 
			endPage = maxPage; 
		}
		
		//pageInfo에 데이터 전달
		spageInfo.setPage(spage); 
		spageInfo.setListCount(listCount);
		spageInfo.setMaxPage(maxPage);
		spageInfo.setStartPage(startPage);
		spageInfo.setEndPage(endPage);
		
		//검색한 페이지의 시작 페이지 값을 구한 변수 
		Integer row = (spage - 1) * 10 + 1;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("row", row);
		return mypageDAO.getSharingList(map);
	}

	@Override
	public List<Users> getSellapplylist(Integer ino) throws Exception {
		return mypageDAO.getSellapplylist(ino);
	}
	@Override
	public String uintroduce(String introduce, Integer userno) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("introduce", introduce);
		map.put("userno", userno);		
		mypageDAO.uintroduce(map);
		return mypageDAO.uintromyself(userno);
	}

	@Override
	public String bintroduce(String introduce, Integer bno) throws Exception {
		mypageDAO.bintroduce(introduce);
		return mypageDAO.bintromyself(bno);

	}


	@Override

	public List<Users> getSharingapplylist(Integer sno) throws Exception {
		return mypageDAO.getSharingapplylist(sno);
	}
	public Users getMypage(Integer userno) throws Exception {		
		return mypageDAO.getMypage(userno);

	}


	@Override
	public void selectSellApply(Integer userno, Integer ino) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("ino", ino);
		mypageDAO.selectSellApply(map);
		
	}


	@Override
	public void selectSharingApply(Integer userno, Integer sno) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("sno", sno);
		mypageDAO.selectSharingApply(map);
	}


	@Override
	public void cancelDeal(Integer ino) throws Exception {
		mypageDAO.cancelDeal(ino);
	}


	@Override
	public void cancelSharingDeal(Integer sno) throws Exception {
		mypageDAO.cancelSharingDeal(sno);
	}


	@Override
	public void completeDeal(Integer ino) throws Exception {
		int count = mypageDAO.completedCount(ino);
		if(count == 0) {
			mypageDAO.upDealCount(ino);
		} else {
			mypageDAO.completeDeal(ino);
		}
	}


	@Override
	public void completeSharingDeal(Integer sno) throws Exception {
		int count = mypageDAO.completedSharingCount(sno);
		if(count == 0) {
			mypageDAO.upSharingDealCount(sno);
		} else {
			mypageDAO.completeSharingDeal(sno);
		}
		
	}


	@Override
	public List<Sell> getBuySellList(Integer userno, int bspage, PageInfo bspageInfo) throws Exception {
		int listCount = mypageDAO.buySellListCount(userno); //전체 데이터 개수 가져오기 (전체 게시글 수)
		System.out.println("row:"+listCount);
		int maxPage = (int)Math.ceil((double)listCount/10);  
		int startPage = bspage/10 * 10 + 1; 
		int endPage = startPage + 10 -1; 
		if(endPage > maxPage) { 
			endPage = maxPage; 
		}
		
		//pageInfo에 데이터 전달
		bspageInfo.setPage(bspage); 
		bspageInfo.setListCount(listCount);
		bspageInfo.setMaxPage(maxPage);
		bspageInfo.setStartPage(startPage);
		bspageInfo.setEndPage(endPage);
		
		//검색한 페이지의 시작 페이지 값을 구한 변수 
		Integer row = (bspage - 1) * 10 + 1;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("row", row);
		return mypageDAO.getBuySellList(map);
	}


	@Override
	public List<Sharing> getBuySharingList(Integer userno, int ppage, PageInfo ppageInfo) throws Exception {
		int listCount = mypageDAO.buySharingListCount(userno); //전체 데이터 개수 가져오기 (전체 게시글 수)
		int maxPage = (int)Math.ceil((double)listCount/10);  
		int startPage = ppage/10 * 10 + 1; 
		int endPage = startPage + 10 -1; 
		if(endPage > maxPage) { 
			endPage = maxPage; 
		}
		
		//pageInfo에 데이터 전달
		ppageInfo.setPage(ppage); 
		ppageInfo.setListCount(listCount);
		ppageInfo.setMaxPage(maxPage);
		ppageInfo.setStartPage(startPage);
		ppageInfo.setEndPage(endPage);
		
		//검색한 페이지의 시작 페이지 값을 구한 변수 
		Integer row = (ppage - 1) * 10 + 1;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("row", row);
		return mypageDAO.getBuySharingList(map);
	}

}