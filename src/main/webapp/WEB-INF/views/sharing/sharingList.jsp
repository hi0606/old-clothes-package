<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
<script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/sharing.css"/>"rel='stylesheet' />
</head>
<body>
	<div>
		<c:import url='/WEB-INF/views/includes/header.jsp' />
	</div>
  <div id="sharingList">
    <h1 id="sharingListSubject">무료나눔</h1>
    <div id="sigunguSearch">
      <div id="sigungu">
        <div class="select">
          <select id="sido">
            <option value="">선택</option>
          </select>
        </div>
        <div class="select">
          <select id="sigugun">
            <option value="">선택</option>
          </select>
        </div>
      </div>
      <div class="select">
        <select>
          <option value="거리순">거리순</option>
          <option value="후기많은순">후기많은순</option>
          <option value="높은평점순">높은평점순</option>
          <option value="낮은평점순">낮은평점순</option>
          <option value="조회순">조회순</option>
        </select>
      </div>
    </div>
    <div id="buttonAndSelect">
      <div class="bt_wrap">
        <a href="sharingRegistForm" class="on">글쓰기</a>
      </div>
      <div class="search-box">
        <input class="search-input" type="text" placeholder="Search something..">
        <button class="search-btn"><i class="fas fa-search"></i></button>
      </div>
    </div>
	
    <div class="card-list">
	  <c:forEach var="sharing" items="${sharingList}">
      <div class="card" data-sno=${sharing.sno }>
          <div class="card-image">
              <img src="upload/${ sharing.sfileids}" alt="무료나눔 옷">
          </div>
          <div class="card-body">
              <span class="date">${sharing.regDate}</span>
              <h2>${sharing.stitle }</h2>
              <p class="sharingContent">${sharing.scontent }</p>
          </div>
          <div class="card-footer">
              ${sharing.addressCity} ${sharing.addressTown }
          </div>
      </div>
	  </c:forEach>
    </div>
    
  </div>
<script src="<c:url value='/resources/js/sharing/sigungu.js'/>"></script>
<script src="<c:url value='/resources/js/sharing/infiniteScroll.js'/>"></script>
</body>
</html>