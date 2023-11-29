<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
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
  .welcome {
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

/* //////////////////////////////////////////////// */
    /* 서브네임 타이틀 */
    #maintitle
    {
        text-decoration: none;
        color:black;
        font-weight: bold;
        font-size: 1.0em;
        
    }
    
    #maintitle:hover
    {
        text-decoration: underline;
    }
    #hrline0
    {   
        text-align: center;
        width: 75%;
    }
    /* 버튼 div */
    .btnContainer2
    {
        width: 75%;
    }
    .entire
    {   
        
        padding: 5px 15px;
        color : white;
        background-color: rgb(136, 129, 230);
        border-color: rgb(134, 97, 236);
    }
    .favor
    {
        
        background-color: white;
        padding: 5px 15px;
        margin-right: 0em;
    }
    .btnwrite
    {   
        float: right;
        padding: 5px 15px;
        color : white;
        background-color: rgb(136, 129, 230);
        border-color: rgb(134, 97, 236);
    }
    /* 게시판 핸들링 */
    #titleStyle{
            text-decoration: none;
            color:black;
            
        }
        #titleStyle:hover{
            text-decoration: underline;
        }
    .trhover:hover {
        background-color: lightgray;
        }
    .titlehover:hover{
        background-color: rgb(228, 226, 226);
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

    .table-hover tbody tr:hover {
            background-color: #f5f5f5; /* Change this to your preferred hover color */
        }
    
    .span{
        font-weight: 900;
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
    <div class="mt-3 ms-3 fs-2 d-flex justify-content-center "><span><a href="/bbs/trip" id="maintitle">trip</a></span></div>
    
    <div  class="mt-1 d-flex justify-content-center">
        <hr id="hrline0" style="border: solid 1.5px rgb(118, 111, 228)">
    </div>
    
    <div  class="mt-1 d-flex justify-content-center">      
        <div class="btnContainer2">
        <button type="button" id="btnAll" class="entire">전체글</button> 
        <button type="button" id="btnRecommend" class="favor">인기글</button>
         <button type="button" class="btnwrite"id="btnWrite" >글작성</button>
        </div>
    </div>
    
    
        <div class="mt-1 d-flex justify-content-center">
            <table border="1" class="table table-hover"  style="width: 75%;" id="tblBBS">
                <thead class="text-center">
                
                    <th style="width: 5%;">번호</th>
                    <th>제목</th>
                    <th style="width: 10%;">글쓴이</th>
                    <th style="width: 15%;">날짜</th>
                    <th style="width: 5%;">조회</th>
                    <th style="width: 5%;">추천</th>
                    
                </thead>
                <tbody>
        
                </tbody>
            </table>
        </div>
        <nav>
            <div class="d-flex justify-content-between" style="margin-left: 15em;">
                <div class="d-flex justify-content-center">  
                    <select name="searchType" id="searchType" class="me-2">
                        <option value="title">제목</option>
                            <option value="content">내용</option>
                        <option value="title_content">제목+내용</option>
                        <option value="name">작성자</option>
                    </select>          
                    <input class="form-control me-2" style="width: 13em; height: 3em;" type="search" placeholder="통합검색" aria-label="Search" id="keyWord">
                    <button class="btn btn-outline-success" type="button" id="btnSearch">Search</button>                                              
                </div>
                
            </div>
        </nav>
        
        
        <div class="d-flex justify-content-center mt-3">
            <button type="button" class="btn" id="btnPrev">이전</button>
            <button type="button" class="btn pageBtn" id="btn1">1</button>
            <button type="button" class="btn pageBtn" id="btn2">2</button>
            <button type="button" class="btn pageBtn" id="btn3">3</button>
            <button type="button" class="btn pageBtn" id="btn4">4</button>
            <button type="button" class="btn pageBtn" id="btn5">5</button>
            <button type="button" class="btn pageBtn"id="btn6">6</button>
            <button type="button" class="btn pageBtn"id="btn7">7</button>
            <button type="button" class="btn pageBtn"id="btn8">8</button>
            <button type="button" class="btn pageBtn"id="btn9">9</button>
            <button type="button" class="btn pageBtn"id="btn10">10</button>
            <button type="button" class="btn" id="btnNext">다음</button>
                        
        </div>
        
    </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <footer>
    <div class="copyright">
        <span style="width: 100%;">Copyright 2023 이젠 커뮤니티 All rights reserved.</span>
        <div>
        이젠 커뮤니티 : ezencomunity@ezen.com
        </div>
    </div>
    </footer>
<script src="/JS/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script>
    (()=>{
        let subName = 'trip';    // 게시판의 이름
        let bstr;
        let sessionState = false;
        let rowsPerPage = 10; // 페이지당 건수 (테이블에서 보여지는 최대건수)
        let rowCount = 0; // 전체 게시글 건수
        let recommendRowCount = 0; // 인기글 게시글 건수
        let curSection = 0; // 현재 섹션
        let pagesPerSection = 10; // 섹션당 페이지수(버튼의 개수와 같다.)
        let initCount = 0;
        const spnWelcome = document.querySelector('#spnWelcome');
        const btnLogin = document.querySelector('#btnLogin')
        const btnPrev = document.querySelector('#btnPrev');
        const btn1 = document.querySelector('#btn1');
        const btn2 = document.querySelector('#btn2');
        const btn3 = document.querySelector('#btn3');
        const btn4 = document.querySelector('#btn4');
        const btn5 = document.querySelector('#btn5');
        const btn6 = document.querySelector('#btn6');
        const btn7 = document.querySelector('#btn7');
        const btn8 = document.querySelector('#btn8');
        const btn9 = document.querySelector('#btn9');
        const btn10 = document.querySelector('#btn10');
        const pageBtn = document.querySelectorAll('.pageBtn');
        const btnBlank = document.querySelector('#btnBlank');
        const btnNext = document.querySelector('#btnNext');
        const btnWrite = document.querySelector('#btnWrite');
        const btnSearch = document.querySelector('#btnSearch');     // 현재 게시판 검색 버튼
        const keyWord = document.querySelector('#keyWord');         // 현재 게시판 검색키워드
        const keyWord0 = document.querySelector('#keyWord0');       // 통합검색 키워드
        const searchType = document.querySelector('#searchType');
        const btnRecom = document.querySelector('#btnRecommend');   // 인기글 버튼
        const btnAll = document.querySelector('#btnAll');           // 전체 게시물 버튼
        const btnCombineSearch = document.querySelector('#btnCombineSearch');   // 통합검색 버튼
        
        // 현재 로그인이 되었는지 확인하는 함수
        const setSessionState = function()
        {
            if('${vo.userId}' == '')
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
                spnWelcome.textContent = '${vo.name}님 반갑습니다.'
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
        
        const getRealPage = function(pageOffset)
        {
            let realPage = (curSection * pagesPerSection) + pageOffset;
            return realPage;
        }

        const showButtons = function(count)
        {
            for(let i = 0; i < pageBtn.length; i++)
            {
                pageBtn[i].style.display = i < count ? 'block' : 'none';
            }
        }
        
        const handleCountChange = function()
        {   initCount = rowCount - ((curSection) * (rowsPerPage) * (pagesPerSection));
            
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
                    sub : subName,
                    page : page,
                    rowsPerPage : rowsPerPage,
                    exception_mode : '${recomvo.exception_mode}'
                };

                $.ajax({
                        url : '/list',
                        type : 'POST',
                        data : requestData,
                        success : function(data) //data : rowcount,bbsList
                        {                               
                            let bstr = '';
                            let like = 0;
                            const tblBody = document.querySelector('#tblBBS>tbody');
                            
                            // 현재 게시판의 총 갯수를 저장해준다.
                            rowCount = data.rowCount;
                            recommendRowCount = data.recommendRowCount;
                            // 테이블 body를 채워준다.
                            tblBody.innerHTML = '';
                            
                            for(let i = 0; i < data.bbsList.length; i++)
                            {
                                bstr = '';
                                const rplyRowCount = data.bbsList[i].rplyRowCount;  // 한 게시글의 댓글 총 개수를 넣어준다.
                                let additionalText = '';
                                like = data.bbsList[i].likeCount;   // 한 게시글의 좋아요 개수를 넣어준다.
                                let colorClass;

                                // 좋아요 개수가 0보다 작으면 빨강색, 크면 파랑색
                                if(like < 0)
                                {
                                    colorClass = "text-danger";
                                }
                                else if(like > 0)
                                {
                                    colorClass = "text-primary";
                                }
                                
                                // 제목 옆에 게시글 총 댓글 개수를 넣어준다.
                                if (rplyRowCount !== 0) 
                                {
                                additionalText = ' '+'[' + rplyRowCount + ']';
                                }
                                
                                
                                bstr += '<tr>';
                                    bstr += '<td class="text-center">' + data.bbsList[i].seq + '</td>';
                                    // bstr += '<td>' + data.bbsList[i].title + '</td>';
                                    bstr += '<td><a id="titleStyle" href=\"/bbs/content?name=' + data.bbsList[i].name + '&seq=' + data.bbsList[i].seq + '&sub=' + data.bbsList[i].sub + '\">' + 
                                        data.bbsList[i].title + '</a>'
                                        + '<span class="span">' + additionalText + '</span></td>';
                                    bstr += '<td class="text-center">' + data.bbsList[i].name + '</td>';
                                    bstr += '<td class="text-center">' + data.bbsList[i].regDate + '</td>';
                                    bstr += '<td class="text-center">' + data.bbsList[i].count + '</td>';
                                    bstr += '<td class="text-center ' + colorClass + '">' + like + '</td>';
                                bstr += '</tr>';


                                tblBody.innerHTML += bstr;
                                
                            } 
                            handleCountChange();                                                  
                        }
                    });
                              
            }

            
        
        
            const buttons = [btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9, btn10];
            btnPrev.addEventListener('click', ()=>{                
                
                if(curSection <= 0)
                {                    
                    alert('이전 내용은 없습니다.');
                    return;
                }
                else
                {   

                    curSection--;                                     
                    btn1.innerHTML = getRealPage(1);
                    btn2.innerHTML = getRealPage(2);
                    btn3.innerHTML = getRealPage(3);
                    btn4.innerHTML = getRealPage(4);
                    btn5.innerHTML = getRealPage(5);

                    btn6.innerHTML = getRealPage(6);
                    btn7.innerHTML = getRealPage(7);
                    btn8.innerHTML = getRealPage(8);
                    btn9.innerHTML = getRealPage(9);
                    btn10.innerHTML = getRealPage(10);
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
                
                btn6.innerHTML = getRealPage(6);
                btn7.innerHTML = getRealPage(7);
                btn8.innerHTML = getRealPage(8);
                btn9.innerHTML = getRealPage(9);
                btn10.innerHTML = getRealPage(10);    
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
            
    // 글쓰기
    btnWrite.addEventListener('click', ()=>{
        if(sessionState == true)
        {
            location.href = "/bbs/newcontent?sub="+subName
        }
        
        else
        {
            alert("로그인을 해주세요.");
        }
    });

    // 로그인
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
    
    // 현재 게시판의 검색 기능
    btnSearch.addEventListener('click', ()=>{
        let reqData = {
            searchType : searchType.options[searchType.selectedIndex].value,    // 제목,내용,작성자,제목+내용
            keyWord : keyWord.value,    // 검색어
            sub : subName,
            
        }
        
        // 전체글에서의 검색기능
        if('${recomvo.exception_mode}' == '')
        {
            if(reqData.keyWord.length == 0 || reqData.keyWord == ' ')
            {
                alert("한글자 이상 입력해주세요.");
            }
            else
            {
                location.href = '/bbs/search?searchType='+reqData.searchType+'&keyWord='+reqData.keyWord+'&sub='+reqData.sub
            }
        }
        
        // 인기글에서의 검색기능
        else
        {
            if(reqData.keyWord.length == 0 || reqData.keyWord == ' ')
            {
                alert("한글자 이상 입력해주세요.");
            }
            else
            {
                location.href = '/bbs/search?exception_mode=recommend&searchType='+reqData.searchType+'&keyWord='+reqData.keyWord+'&sub='+reqData.sub
            }
        }
               
    });
    
    // 인기글 버튼을 눌렀을 때 색깔 바꾸기
    function hasRecommendParam() {
        const urlParams = new URLSearchParams(window.location.search);
        return urlParams.has('exception_mode') && urlParams.get('exception_mode') === 'recommend';
        }
        // 페이지 로딩 시 버튼 색상 초기화
        if (hasRecommendParam()) {
        btnRecom.style.color = 'white';
        btnRecom.style.backgroundColor = 'rgb(136, 129, 230)';
        btnRecom.style.borderColor = 'rgb(134, 97, 236)';
        btnAll.style.color = 'black';
        btnAll.style.backgroundColor = 'white';
        btnAll.style.borderColor = 'black';
        };
    
    // 인기글 버튼 핸들링
    btnRecom.addEventListener('click', (event)=>{                
        location.href = '/bbs/' + subName + '?exception_mode=recommend';                 
    });

    // 전체글 버튼 핸들링
    btnAll.addEventListener('click', ()=>{
        location.href = '/bbs/' + subName;
    });

    // 게시판 검색 기능
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
        
            setBBS(0);
            setSessionState();  // 세션이 있는지 없는지 상태값을 저장.
            setWelcomeMsg();    // 웰컴 메세지 설정
            setLoginButton();
            
    })();
</script>
</body>
</html>