<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>

.main {
    text-align: right;
    margin-right: 10%;
    margin-top: 1.5em;
    margin-bottom: -3em;
  }

  /* 최상단 제목 */
  .title {
    position: absolute;
    width: 100%;
    height: 0;
    left: 0;
    top: 0;
    letter-spacing: 0.5rem;
    text-align: center;
    margin: 0 auto;
    margin-top: 1.25em;
    animation: text-fadein 3s;
  }

  /* 최상단 제목 fadein */
  @keyframes text-fadein { /* 프레임 범위값 지정 */
      
      from {
          opacity: 0;
      }
      to {
          opacity: 1;
          transform: none;
      }
  }

  .title > h1 {
  text-align: center;
  font-weight: bold;
  font-size: 2em;
  margin-bottom: 0.5em;
  }
/* ////////////////////////////////////////////// */

  /* 통합 검색 */
  .search {
    border: 12.5px solid rgb(142, 205, 247);
    border-radius: 25px;
    margin: 0 auto;
    text-align: center;
    margin-top: 60px;
  }

  .search img {
    width: 30px;
    margin: 0;
  }

/* ///////////////////////////////////////////// */
  .welcome span{
    margin-left: auto;
  }
  
    /* /////// */
*{padding:0;margin:0}
li{list-style:none}
.menu a{text-decoration:none;font-size:18px}

.menu {
  position:absolute;
  
  width: 110%;
  /* overflow: hidden; */
  margin: 60px auto;
  left: 10%;
  z-index: 1;
  /* margin-left: 15em; */
}

.menu > li {
  align-items: center;
  align-content: center;
  width: 10%; /*20*5=100%*/
  margin: 0 auto;
  float: left;
  text-align: center;
  line-height: 40px;
  background-color: rgb(107, 188, 241);
  font-weight: bold;
}

.menu a {
  color: #fff;
}

.submenu > li {
  line-height: 50px;
  background-color: #94a9ff;
  width: 100%;
  
}

.submenu {
  height: 0; /*ul의 높이를 안보이게 처리*/
  overflow: hidden;
  width: 100%;
  
}

.menu > li:hover {
  background-color: #94a9ff;
  /* transition-duration: 0.5s; */
  
}

.menu > li:hover .submenu {
  height: 250px; /*서브메뉴 li한개의 높이 50*5*/
  /* transition-duration: 1s; */
}

  /* .btn {
    margin-inline: 0.5em;
  } */

  .titleName {
    
    width: max-content;
    margin: 0 auto;
    margin-top: 30px;
  }

  .titleName h1 {
    text-align: center;
    font-weight: bold;
    font-size: 2em;
    margin-bottom: 0.5em;
  }

  .sub {
    text-align: left;
    max-width: 1500px;
    margin: 0 auto;
  }

  .sub > p, #container, #container2 {
    width: 68%;
    margin: 0 auto;
    margin-top: 25px;
    margin-bottom: 25px;
  }

  .up {
    width: 68%;
    margin: auto;
    background-color: rgb(238, 238, 238);
    height: 2.2em;
  }

  .txtT {
    font-size: 1.4em;
    font-weight: bold;
    float: left;
  }

  .txtR {
    float: right;
  }

  .down {
    width: 68%;
    margin: auto;
  }

  .txtC {
    float: right;
  }

  .txtI {
    float: left;
  }

  .btnbo {
    font-weight: bold;
    font-size: 1.25em;
    text-align: center;
  }

  .comu {
    text-align: center;
    margin-top: 75px;
  }

  a{
    text-decoration-line: none;
    color: black;
  }

  footer {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: -16px;
    text-align: center;
    
    height: 3em;
    width: 100%;
    font-weight: bold;
    background-color: rgb(255, 236, 236);
    color: black;
    }
  #container2{
    margin-top: 0.25em;
    margin-bottom: 0.25em;

  }

  hr {
    width: 68%;
    margin: 0 auto;
  }
  .rplyStyle{
    display: flex;
    justify-content: center;
    margin-top: 1rem;
    max-width: 1500px;
    margin: 0 auto;
    
  }
  .rplytext{
    border-radius: 7.5px;
    width: 61%;
  }
  .entireRply{
    max-width: 1500px;
    margin: 0 auto;
  }
  .RplyContentStyle{
    margin-top: 0.25rem;
    display: flex;
    justify-content: center;
    max-width: 1500px;
    margin: 0 auto;
  }
  #btnReplyDelete {
    font-size: 70%;
    font-weight:  bold;
  }
  #btnRply {
    font-weight: bold;
  }

  #btnList {
    font-weight: bold;
  }

  #btnUpdate {
    font-weight: bold;
  }

  #btnDelete {
    font-weight: bold;
  }

  #btnLike {
    font-weight: bold;
  }

  #btnDislike {
    font-weight: bold;
  }
  .toggle-reply:hover {
    background-color: #f8f9fa;/* 원하는 호버 배경색 설정 */
    text-decoration: underline;
}
</style>
</head>
<body>
  <div>
    <div class="main">
        <div class="title">
        <h1>이젠 커뮤니티 사이트</h1>
        </div>
        <nav class="navbar navbar-expand-lg mt-3">
          <div class="container-fluid" style="width: 75%;">
            <a class="navbar-brand fs-1" href="/index"><img src="/image/cumu1.png" width="150" height="150"></a>
              <div class="search">
                <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarSupportedContent">
                  <div class="d-flex" role="search">
                    <input class="form-control me-2" style="width: 30em; height: 3em;" type="search" placeholder="통합검색" aria-label="Search" id="keyWord0">
                    <button class="btn" type="button" id="btnCombineSearch">
                      <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                    </button>
                </div>
              </div>
            </div>
          </div>
        </nav>
        <div class="welcome">
          <span id="spnWelcome"></span>
          <button class="btn me-3" type="button" id="btnLogin" ></button>
          <a class="btn me-3" href="/bbs/allbbs">전체게시판</a>
        </div>   
      </div>
      <ul class="menu">
        <li>
          <a href="/bbs/best">인기</a>
        </li>
        <li>
          <a href="#"></a>
        </li>
        <li>
          <a href="#">정보</a>
          <ul class="submenu" style="width: 80%;">
            <li ><a class="dropdown-item" href="/bbs/restaurant">맛집</a></li>
            <li><a class="dropdown-item" href="/bbs/datecourse">데이트코스</a></li>
            <li><a class="dropdown-item" href="/bbs/electronic">전자기기</a></li>
            <li><a class="dropdown-item" href="/bbs/animal">동물</a></li>
            <li><a class="dropdown-item" href="/bbs/car">자동차</a></li>
          </ul>
        </li>
        <li>
          <a href="#"></a>
        </li>
        <li>
          <a href="#">게임</a>
          <ul class="submenu" style="width: 80%;">
            <li><a class="dropdown-item" href="/bbs/LOL">롤</a></li>
            <li><a class="dropdown-item" href="/bbs/fifa">피파</a></li>
            <li><a class="dropdown-item" href="/bbs/battleground">배틀그라운드</a></li>
            <li><a class="dropdown-item" href="/bbs/overwatch">오버워치</a></li>
            <li><a class="dropdown-item" href="/bbs/suddenattack">서든어택</a></li>
          </ul>
        </li>
        <li>
          <a href="#">일반</a>
          <ul class="submenu" style="width: 80%;">
            <li><a class="dropdown-item" href="/bbs/fashion">패션</a></li>
            <li><a class="dropdown-item" href="/bbs/trip">여행</a></li>
            <li><a class="dropdown-item" href="/bbs/hobby">취미</a></li>
            <li><a class="dropdown-item" href="/bbs/food">음식</a></li>
            <li><a class="dropdown-item" href="/bbs/relationship">연애</a></li>
          </ul>
        </li>
        <li>
          <a href="#">이슈</a>
          <ul class="submenu" style="width: 80%;">
            <li><a class="dropdown-item" href="/bbs/international">국제</a></li>
            <li><a class="dropdown-item" href="/bbs/economy">경제</a></li>
            <li><a class="dropdown-item" href="/bbs/entertainment">연예</a></li>
            <li><a class="dropdown-item" href="/bbs/movie">영화</a></li>
            <li><a class="dropdown-item" href="/bbs/news">소식</a></li>
          </ul>
        </li>
        <li>
          <a href="#">운동</a>
          <ul class="submenu" style="width: 80%;">
            <li><a class="dropdown-item" href="/bbs/soccer">축구</a></li>
            <li><a class="dropdown-item" href="/bbs/baseball">야구</a></li>
            <li><a class="dropdown-item" href="/bbs/golf">골프</a></li>
            <li><a class="dropdown-item" href="/bbs/basketball">농구</a></li>
            <li><a class="dropdown-item" href="/bbs/volleyball">배구</a></li>
          </ul>
        </li>
        <li>
          <a href="#">투자</a>
          <ul class="submenu" style="width: 80%;">
            <li><a class="dropdown-item" href="/bbs/stock">주식</a></li>
            <li><a class="dropdown-item" href="/bbs/virtual">가상화폐</a></li>
            <li><a class="dropdown-item" href="/bbs/property">부동산</a></li>
            <li><a class="dropdown-item" href="/bbs/gold">금</a></li>
            <li><a class="dropdown-item" href="/bbs/currency">기축통화</a></li>
          </ul>
        </li>
      </ul>
    <!--/////////////////////////////////////////  -->
</div>
<br><br><br><br><br>
  <div class="titleName">
    <a href="/bbs/${vo.sub}"><h1>${vo.sub}</h1></a>
  </div>
  <br>
<div class="entireStyle">
  <div class="sub">
    <hr>
    <div class="up"><span id="txtTitle" class="txtT">&nbsp;${vo.title}</span><span class="txtR">${vo.regDate}&nbsp;</span></div>
    <div class="down"><span id="txtId" class="txtI">&nbsp;${vo.name}</span><span class="txtC">조회 수&nbsp;${vo.count} 추천 수&nbsp;${vo.likeCount}&nbsp;</span></div><br><hr>
    
      <div id="container">            
      </div>      
      
      <p id="txtContent">&nbsp;&nbsp;${vo.content}</p>
      <div id="hr">

      </div>
      <div id="container2" >
      </div>

    
      </div>
    <div class="btnbo">
      <button type="button" id="btnList" class="btn bg-secondary p-2 bg-opacity-25 border-dark">목록으로</button>    
      <button type="button" id="btnUpdate" class="btn bg-secondary p-2 bg-opacity-25 border-dark">수정</button>
      <button type="button" id="btnDelete" class="btn bg-secondary p-2 bg-opacity-25 border-dark">삭제</button>
      <br><br>
      <a class="reco">
      <button type="button" id="btnLike" class="btn bg-secondary p-2 text-primary bg-opacity-25 border-dark">추천</button>
      &nbsp;<span id="likeCount"></span>&nbsp;
      <button type="button" id="btnDislike" class="btn bg-secondary p-2 text-danger bg-opacity-25 border-dark">비추천</button>
      </a>
    </div>
  </div>
  <div class="entireRply">
    <br><hr><br>
    <div class=" d-flex justify-content-center">
      <h3>전체댓글</h3>
      <h4><span id="rowsCount"></span></h4>
    </div><br><hr><br>
  </div>
    

    
        <div class="RplyContentStyle">
            <table border="1" class="table"  style="width: 68%;" id="tblRply">
                <thead class="text-center">
                  
                    <!-- <th style="width: 5%;">순번</th>
                    <th>제목</th>
                    <th style="width: 10%;">글쓴이</th>
                    <th style="width: 15%;">날짜</th>
                    <th style="width: 5%;">조회</th>
                    <th style="width: 5%;">추천</th> -->
                </thead>
                <tbody>
                  
                </tbody>
            </table>
        </div>

        <div class="d-flex justify-content-center mt-3">
          <button type="button" class="btn" id="btnPrev">이전</button>
          <button type="button" class="btn pageBtn" id="btn1">1</button>
          <button type="button" class="btn pageBtn" id="btn2">2</button>
          <button type="button" class="btn pageBtn" id="btn3">3</button>
          <button type="button" class="btn pageBtn" id="btn4">4</button>
          <button type="button" class="btn pageBtn" id="btn5">5</button>
          <button type="button" class="btn" id="btnNext">다음</button>
                      
      </div>
       
      <div class="rplyStyle">
        <textarea rows="2" cols="158" name="content" id="rplyContent"  placeholder="댓글을 입력하세요." class="rplytext"></textarea>         
        <button type="submit" id="btnRply" class="btn bg-secondary p-2 bg-opacity-25 border-dark"  >댓글 작성</button>
      </div>
          
        <br><br>
       
  <footer>
    <div class="copyright">
        <span style="width: 100%;">Copyright 2023 이젠 커뮤니티 All rights reserved.</span>
      <div>
        이젠 커뮤니티 : ezencomunity@ezen.com
      </div>
    </div>
  </footer>
        
  
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script src="/JS/jquery-3.7.0.min.js"></script>

<script>
    (()=>{
    let myContent = false;
    let sessionState = false;

    let bstr;
    let pageNum = 0;
    let currentPage = 0;
    // page..
    let rowsPerPage = 10; // 페이지당 건수 (테이블에서 보여지는 최대건수)
    // row..
    let rowCount = 0; // 전체 건수
    // section..
    let curSection = 0; // 현재 섹션
    let pagesPerSection = 5; // 섹션당 페이지수(버튼의 개수와 같다.)
    const spnWelcome = document.querySelector('#spnWelcome');
    const rowsCount = document.querySelector('#rowsCount');
    const btnLogin = document.querySelector('#btnLogin');
    const txtTitle = document.querySelector('#txtTitle');
    const txtContent = document.querySelector('#txtContent');
    const btnList = document.querySelector('#btnList');
    const btnUpdate = document.querySelector('#btnUpdate');
    const btnDelete = document.querySelector('#btnDelete');
    const btnLike = document.querySelector('#btnLike');
    const btnDislike = document.querySelector('#btnDislike');
    const btnPrev = document.querySelector('#btnPrev');
    const btn1 = document.querySelector('#btn1');
    const btn2 = document.querySelector('#btn2');
    const btn3 = document.querySelector('#btn3');
    const btn4 = document.querySelector('#btn4');
    const btn5 = document.querySelector('#btn5');
    const pageBtn = document.querySelectorAll('.pageBtn');
    const btnRply = document.querySelector('#btnRply');
    const rplyContent = document.querySelector('#rplyContent');
    const btnBlank = document.querySelector('#btnBlank');
    const btnNext = document.querySelector('#btnNext');
    const container = document.querySelector('#container');
    const container2 = document.querySelector('#container2');
    const likeCount = document.querySelector('#likeCount');
    const hr = document.querySelector('#hr');
    const keyWord0 = document.querySelector('#keyWord0'); // 통합검색
    const btnCombineSearch = document.querySelector('#btnCombineSearch');


    const changeColor = function()
    {
      let like = '${vo.likeCount}';
      if(like < 0)
      {
        likeCount.classList.add('text-danger'); // 클래스 추가
        likeCount.classList.remove('text-primary');
      }
      else if(like > 0)
      {
        likeCount.classList.add('text-primary'); // 클래스 추가
        likeCount.classList.remove('text-danger'); // 기존 클래스 제거
      }
      likeCount.textContent = like;
    }
    
    /////////////////////////////////////////////// 함수
    const setSessionState = function()
    {
        if('${session.userId}' == '')
        {
            sessionState = false;
        }
        else
        {
            sessionState = true;
        }
    }
        
    const setWelcomeMsg = function()
    {
      if(sessionState == true)
      {
        spnWelcome.textContent = '${session.name}님 반갑습니다.'
      }
      else
      {
        spnWelcome.textContent = ''

      }
    }

    const setLoginButton = function()
    {
      if(sessionState == true)
      {
        btnLogin.textContent = '로그아웃';
      }
      else
      {
        btnLogin.textContent = '로그인'

      }
    }

    const checkMyContent = function()
    {   
      if('${session.name}' === '${vo.name}')
      {
        myContent = true;
        
      }
      else
      {
        myContent = false;
      }
    }

    const checkRplyContent = function()
    {
      if(sessionState == false)
      {
        rplyContent.placeholder = '로그인이 필요합니다. 로그인 하시겠습니까?'
        rplyContent.setAttribute('readonly', 'readonly');

        rplyContent.addEventListener('click', ()=>{
          if (confirm("로그인 하시겠습니까?") == true)
          { 
            location.href = '/user/login';
          }
          else
          {
            
          }
        })
      }
     
    }
    const setUiObject = function()
    {   
        // 내 컨텐츠가 아니라면 읽기만 가능하다.
        if(myContent == false)
        {
            // 타이틀, 컨텐츠를 read-only            
            txtTitle.setAttribute('readonly', 'readonly');
            
            btnUpdate.setAttribute('disabled', 'disabled');
            btnDelete.setAttribute('disabled', 'disabled');
            // 수정버튼을 disable
        }
        
    }
    const setImage = function()
    {
      if('${vo.fileCode}' != '')
      {
        const img = new Image();
        // src 속성에 파일 주소 지정
        
        img.src = `/imgs/member/thumbnail/${filevo.storedName}`;

        container.appendChild(img);
        
      }
      else
      {
        
      }
    }

    const setFile = function()
    {
      if('${vo.fileCode}' != '')
      {
        let bstr;
        let bstr2;
        bstr2 = '<hr>'
        bstr = '<a href=/imgs/member/thumbnail/${filevo.storedName}>${filevo.originName}</a>'
        hr.innerHTML = bstr2;
        container2.innerHTML = bstr;
      }
    }
    const setInsertPage = function()
    { 
      pageNum = Math.floor((rowCount) / rowsPerPage);
      if(pageNum < 0)
      {
        pageNum = 0;
      }
      return pageNum;
    }

    const setDeletePage = function()
    { 
      pageNum = Math.floor((rowCount - 2) / rowsPerPage);
      if(pageNum < 0)
      {
        pageNum = 0;
      }
      return pageNum;
    }

    const showButtons = function(count)
    {
        for(let i = 0; i < pageBtn.length; i++)
        {
            pageBtn[i].style.display = i < count ? 'block' : 'none';
        }
    }
    
    const handleCountChange = function()
    {   
      initCount = rowCount - ((curSection) * (rowsPerPage) * (pagesPerSection));
      let val = Math.floor((initCount) / rowsPerPage)
      let val2 = initCount % rowsPerPage;
      let count = 0;   
      if (val2 === 0)
      {
        count = val;
      }
      else
      {
        count = val + 1;
      }
      showButtons(count);

    }
    const setBBS = function(page)
    {
      let requestData = {
          bbsNo : '${vo.bbsNo}',
          page : page,
          rowsPerPage : rowsPerPage,
      };
        
      $.ajax({
              url : '/rply/list',
              type : 'POST',
              data : requestData,
              success : function(data) //data : rowcount,bbsList
              {                               
                  let bstr = '';
                  let subBstr = '';
                  const tblBody = document.querySelector('#tblRply>tbody');
                  rowsCount.innerHTML = '';
                  // 전체 카운트를 저장.
                  rowCount = data.rowCount;
                  rowsCount.innerHTML = rowCount;
                  // 테이블 body를 채워준다.
                  tblBody.innerHTML = '';
                  
                  if(rowCount == 0)
                  {
                    
                  }
                  else
                  { 
                    for(let i = 0; i < data.rplyList.length; i++)
                    {  
                      // 기존 댓글을 표현
                      if(data.rplyList[i].parentRno == 0)
                      {
                        bstr = '';
                        bstr += '<tr>';                            
                            bstr += '<td id="rplyName" style="width: 10%;">' + data.rplyList[i].name + '</td>';
                            bstr += '<td class="toggle-reply" style="width: 70%; cursor: pointer;">' + data.rplyList[i].content + '</td>';
                            bstr += '<td class="my-table-container text-center" style="width: 10%;">' + data.rplyList[i].regDate + '</td>';
                            bstr += '<td class="my-table-container text-center" style="width:10%"><button type="button" id="btnReplyDelete" class="btn bg-secondary p-1 bg-opacity-25 border-dark">삭제</button>' + '</td>';
                            bstr += '</tr>';
                            
                            // 대댓글 작성 하는부분
                            bstr += '<tr>';
                            bstr += '<td colspan="5">'; // 대댓글을 위한 셀 병합
                            bstr += '<div class="bg-light reply-box" style="text-align: right; padding: 10px; display: none;">'; // 오른쪽 정렬을 위한 div 컨테이너
                            bstr += '<textarea class="reply-textarea" placeholder="대댓글 작성..." rows="2" style="width: 97%;"></textarea><br>';
                            bstr += '<button class="btnReplySubmit" class="btn bg-secondary p-1 bg-opacity-25 border-dark">작성</button>';
                            bstr += '</div>';
                            bstr += '</td>';
                            bstr += '</tr>';
                                                    

                        tblBody.innerHTML += bstr;
                      }
                      // 대댓글들을 표현
                      else
                      {
                        bstr = '';
                        bstr += '<tr>';
                            bstr += '<td id="rplyName" class="bg-light" style="width: 10%; padding-left: 15px;">' +'ㄴ' +data.rplyList[i].name + '</td>';
                            bstr += '<td class="bg-light toggle-reply" style="width: 60%; cursor: pointer; padding-left: 5px;">' +'<span style="color: rgba(0, 0, 0, 0.5);">'+data.rplyList[i].originName +'</span>'  +' '+ data.rplyList[i].content + '</td>';
                            bstr += '<td class="bg-light my-table-container text-center" style="width: 10%;">' + data.rplyList[i].regDate + '</td>';
                            bstr += '<td class="bg-light my-table-container text-center" style="width:10%"><button type="button" id="btnReplyDelete" class="btn bg-secondary p-1 bg-opacity-25 border-dark">삭제</button>' + '</td>';
                            
                            bstr += '</tr>';
                            
                            // 대댓글 작성 부분
                            bstr += '<tr>';
                            bstr += '<td colspan="5">'; // 대댓글을 위한 셀 병합
                            bstr += '<div class="bg-light reply-box" style="text-align: right; padding: 10px; display: none;">'; // 오른쪽 정렬을 위한 div 컨테이너
                            bstr += '<textarea class="reply-textarea" placeholder="댓글을 입력하세요." rows="2" style="width: 97%;"></textarea><br>';
                            bstr += '<button class="btnReplySubmit" class="btn bg-secondary p-1 bg-opacity-25 border-dark">작성</button>';
                            bstr += '</div>';
                            bstr += '</td>';
                            bstr += '</tr>';
                        tblBody.innerHTML += bstr;
                      }                     
                    } 
                    handleCountChange();
                    const rplyName = document.querySelectorAll('#rplyName');
                    const btnReplyDelete = document.querySelectorAll('#btnReplyDelete');
                    const rplySeq = document.querySelectorAll('#rplySeq');
                    const toggleButtons = document.querySelectorAll('.toggle-reply');
                    const btnReplySubmit = document.querySelectorAll('.btnReplySubmit');

                    for(let i = 0; i < data.rplyList.length; i++)
                    { 
                      
                      if(sessionState == true)
                      {
                        // 댓글의 제목을 눌렀을 때 대댓글 작성 부분을 토글형식으로 표현.
                        toggleButtons[i].addEventListener('click', ()=>{
                        
                        let replyRow = event.currentTarget.closest('tr').nextElementSibling;
                        let replyBox = replyRow.querySelector('.reply-box');

                        if (replyBox.style.display === 'none' || replyBox.style.display === '') {
                            replyBox.style.display = 'block';
                        } else {
                            replyBox.style.display = 'none';
                        }                          
                      });
                      }

                      // 대댓글 작성 버튼
                      btnReplySubmit[i].addEventListener('click', (event)=>{
                        const replyTextarea = event.currentTarget.parentElement.querySelector('.reply-textarea');
                        let replyContent = replyTextarea.value.trim();

                        
                        if((replyContent == ''))
                        {
                            alert("내용을 한글자 이상 작성 해주세요.");
                            replyTextarea.focus();
                          
                        }
                        else if(sessionState == false)
                        { 
                          
                          alert("로그인 해주세요");
                        }
                        else if((replyContent != ''))
                        {
                          
                          let reqData = {
                          userId : '${session.userId}',
                          name : '${session.name}', // 대댓글 쓰는사람의 닉네임
                          parentRno : data.rplyList[i].rno, // 기존 댓글의 댓글번호를 ParentRno로 삼는다.
                          bbsNo : '${vo.bbsNo}',
                          originName : data.rplyList[i].name,// 원댓글의 닉네임
                          content : replyContent
                            
                        }
                        $.ajax({
                          url: '/rply/newcontent',
                          type: 'POST',
                          data: reqData,
                          success: function(data) 
                          {
                            if(data == "OK")
                            {
                              alert("등록되었습니다");
                              replyContent = '';
                              setBBS(currentPage);
                            }
                          },
                          error: function(error) {
                              alert('댓글등록 실패')
                          }
                          });
                        }
                      });
                    }

                    for(let i = 0; i<data.rplyList.length; i++)
                    { 
                      if('${session.name}' != data.rplyList[i].name)
                      {
                        btnReplyDelete[i].setAttribute('disabled', 'disabled')
                      }

                      // 댓글 삭제 부분
                      btnReplyDelete[i].addEventListener('click', ()=>{
                      let reqData = {
                        name : '${session.name}',
                        rno : data.rplyList[i].rno,                                    
                        bbsNo : '${vo.bbsNo}',
                        
                      }
                      
                      $.ajax({
                              url : '/deletecontent',
                              type : 'POST',
                              data : reqData,
                              success : function(data)
                              {
                                if(data == "OK")
                                {
                                    alert("삭제되었습니다.");
                                    setBBS(currentPage);
                                }
                                else
                                {
                                  alert("삭제불가능.")
                                }
                              }
                          });
                        })
                        }
                      }
                    }
                });                
              }     

    // 원댓글작성 버튼

    btnRply.addEventListener('click',()=>{
      let readPage = 0;
      let reqData = {
            userId : '${session.userId}',
            name : '${session.name}',            
            content : rplyContent.value,
            bbsNo : '${vo.bbsNo}',
            parentRno : 0,
            originName : '${session.name}'
            
        };
      

        if((reqData.content == ''))
        {
          alert("내용을 한글자 이상 작성 해주세요.");
          rplyContent.focus();
        }

        else if(sessionState == false)
        { 
          
          alert("로그인 해주세요");
        }
        else
        {
        $.ajax({
            url : '/rply/newcontent',
            type : 'POST',
            data : reqData,
            success : function(data)
            {
                if(data == "OK")
            {
                alert("등록되었습니다.");
                rplyContent.value='';
                readPage = setInsertPage();
                setBBS(readPage);
                currentPage = readPage;
            }
            else
            {
                alert("등록을 실패하였습니다");
            }
            }
        });
      }
    });
    const getRealPage = function(pageOffset)
    {
        let realPage = (curSection * pagesPerSection) + pageOffset;
        return realPage;
    }
    /////////////////////////////////////////////// 호출부
    // 목록으로
    btnList.addEventListener('click', ()=>{
        location.href = '/bbs/${vo.sub}';
    });
    
    // 글 수정
    btnUpdate.addEventListener('click', ()=>{             
        location.href = '/bbs/modify?seq='+'${vo.seq}'+'&sub='+'${vo.sub}'+'&name='+'${vo.name}'
    });
    // 글 삭제
    btnDelete.addEventListener('click', ()=>{
      let reqData = {
            userId : '${session.userId}',
            name : '${session.name}',            
            title : txtTitle.innerHTML,
            seq : '${vo.seq}',            
            sub : '${vo.sub}',
            bbsNo : '${vo.bbsNo}'
        };
        
        $.ajax({
                url : '/bbs/deletecontent',
                type : 'POST',
                data : reqData,
                success : function(data)
                {
                    if(data == "OK")
                {
                    alert("삭제되었습니다.");
                    location.href = '/index';
                }
                else
                {
                    alert("삭제불가");
                }
                }
            });
        
        
    });
    // 추천 버튼
    btnLike.addEventListener('click', ()=>{
      let reqData = {
        userId : '${session.userId}',
        name : '${session.name}',       
        title : '${vo.title}',
        seq : '${vo.seq}',
        sub : '${vo.sub}',
        bbsNo : '${vo.bbsNo}'
      };
      
      if(reqData.userId.length == 0)
      {
        alert('로그인 기능이 필요합니다.');
      }
      else
      {
        $.ajax({
                url : '/bbs/likecontent',
                type : 'POST',
                data : reqData,
                success : function(data)
                {
                  if(data == "OK")
                  {
                  location.reload();

                  }
                  else
                  {
                    alert("회원 당 추천은 한개 뿐입니다.");
                  }
                }
            });
      }
      

    });
    // 비추천 버튼
    btnDislike.addEventListener('click', ()=>{
      let reqData = {
        userId : '${session.userId}',   
        name : '${session.name}',       
        title : '${vo.title}',
        seq : '${vo.seq}',
        sub : '${vo.sub}',
        bbsNo : '${vo.bbsNo}'
      };
      
      if(reqData.userId.length == 0)
      {        
        alert('로그인 기능이 필요합니다.');
      }
      else
      {
        $.ajax({
                url : '/bbs/dislikecontent',
                type : 'POST',
                data : reqData,
                success : function(data)
                {
                  if(data == "OK")
                  {
                  location.reload();

                  }
                  else
                  {
                    alert("회원 당 추천은 한개 뿐입니다.");
                  }
                }
            });
      }
      

    });
    btnLogin.addEventListener('click', () => {
      if (sessionState == true)
      {
        location.href = '/logout';
      }

      else 
      {
        location.href = '/user/login';
      }
    });
    const buttons = [btn1, btn2, btn3, btn4, btn5];

    btnPrev.addEventListener('click', ()=>{                
                
                if(curSection <= 0)
                {                    
                    alert('이전 내용은 없습니다.');
                    return;
                }
                else
                {   
                    //서버에 현재 몇건이 있는지 알아본다.

                    curSection--;                                     
                    btn1.innerHTML = getRealPage(1);
                    btn2.innerHTML = getRealPage(2);
                    btn3.innerHTML = getRealPage(3);
                    btn4.innerHTML = getRealPage(4);
                    btn5.innerHTML = getRealPage(5);

                    
                    let realPage = getRealPage(0);
                    setBBS(realPage);
                    btn1.style.color = 'blue';
                    btn1.style.textDecoration = 'underline';  
                    for(let i = 1; i < 5; i++)
                    {
                      buttons[i].style.color = '';
                      buttons[i].style.textDecoration = 'none';
                    }
                    
                }
            });

            btnNext.addEventListener('click', ()=>{
                
                // 한 섹션에 row 개수(25)
                let rowPerSection = rowsPerPage * pagesPerSection;
                let nextRowCount = (rowCount - ((curSection + 1) * rowPerSection));
                if(nextRowCount <= 0)
                {
                    alert('다음 내용은 없습니다.');
                    return;
                }
                else
                {
                
                curSection++;
                btn1.innerHTML = getRealPage(1);
                btn2.innerHTML = getRealPage(2);
                btn3.innerHTML = getRealPage(3);
                btn4.innerHTML = getRealPage(4);
                btn5.innerHTML = getRealPage(5);
                
               
                let realPage = getRealPage(0);
                setBBS(realPage);
                btn1.style.color = 'blue';
                btn1.style.textDecoration = 'underline';
                for(let i = 1; i < 5; i++)
                {
                  buttons[i].style.color = '';
                  buttons[i].style.textDecoration = 'none';
                }
                // setBBS(((curSection + 1) * pagesPerSection) - 5);

                
                }               

            });
            
            // 버튼 누를때마다 색변화와 페이징 기능
            btn1.style.color = 'blue';
            btn1.style.textDecoration = 'underline';
            
            
            buttons.forEach((btn, index) => {
                btn.addEventListener('click', () => {
                    buttons.forEach((otherBtn, otherIndex) => {
                        if (index === otherIndex) {
                            // 클릭한 버튼에 CSS 적용
                            otherBtn.style.color = 'blue';
                            otherBtn.style.textDecoration = 'underline';
                        } else {
                            // 다른 버튼에 CSS 초기화
                            otherBtn.style.color = '';  // 빈 문자열로 스타일 제거
                            otherBtn.style.textDecoration = 'none';
                        }
                    });

                    const offset = index; // 해당 버튼의 인덱스를 offset으로 사용
                    const readlPage = getRealPage(offset);
                    setBBS(readlPage);
                    // setBBS(((curSection + 1) * pagesPerSection) - (10 - offset));
                });
            });

 //////////////////////////////////////////////////////////////
 
    // 통합검색
    btnCombineSearch.addEventListener('click', ()=>{
        let reqData = {
            keyWord : keyWord0.value
            // sub : subName
            
        }
        
        if(reqData.keyWord.length == 0)
        {
            alert("한글자 이상 입력해주세요.");
        }
        else
        {
            location.href = '/bbs/combineSearch?keyWord='+reqData.keyWord
        }       
    });
    setBBS(0);          // 초기화면
    setSessionState();  // 세션이 있는지 없는지 상태값을 저장.
    setWelcomeMsg();    // 웰컴 메세지 설정
    setLoginButton();   // 로그인 버튼 핸들링
    checkMyContent();   // 내 컨텐츠인지를 체크. 내 컨첸트 인 경우 myContent = true
    setUiObject();      // 읽기전용으로 만드는 함수
    checkRplyContent(); // 로그인이 되어야 답글을 달 수 있음
    setImage();         // 이미지 넣어줌
    setFile();          // 파일 넣어줌
    changeColor();      // 좋아요 색변화
    
    })();
</script>
</body>
</html>