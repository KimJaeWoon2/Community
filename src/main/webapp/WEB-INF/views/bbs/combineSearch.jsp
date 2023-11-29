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

  

/* 카테고리 */
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
.trhover:hover {
    background-color: lightgray;
  }
.titlehover:hover{
    background-color: rgb(228, 226, 226);
}
#hrline0
    {   
        text-align: center;
        width: 75%;
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
    #maintitle {
    font-weight: bold;
    }
    .table-hover tbody tr:hover {
            background-color: #f5f5f5; /* Change this to your preferred hover color */
        }
    
    .span{
        font-weight: 900;
    }

    #boardcolor
    {
        color: rgb(6, 155, 6);
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
                      <input class="form-control me-2" style="width: 30em; height: 3em;" type="search" placeholder="통합검색" aria-label="Search" id="keyWord">
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
        <br><br><br><br><br>
    <div class="mt-3 ms-3 fs-2 d-flex justify-content-center">
        <span id="maintitle">통합 게시물</span>
        
        </div>
    
        <div  class="mt-1 d-flex justify-content-center">
            <hr id="hrline0" style="border: solid 1.5px rgb(118, 111, 228)">
        </div>
        <br><br>
        
        <div class="mt-1 d-flex justify-content-center">
            <table border="1" class="table"  style="width: 75%;" id="tblBBS">
                
                <thead class="text-center">
<!-- 
                    <th style="width: 50%;"></th>
                    <th style="width: 5%;"></th>
                    <th style="width: 5%;"></th>
                    <th style="width: 5%;"></th>
                    <th style="width: 5%;"></th>
                -->
                </thead>
                <tbody >
                    
        
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
            <button type="button" class="btn pageBtn"id="btn6">6</button>
            <button type="button" class="btn pageBtn"id="btn7">7</button>
            <button type="button" class="btn pageBtn"id="btn8">8</button>
            <button type="button" class="btn pageBtn"id="btn9">9</button>
            <button type="button" class="btn pageBtn"id="btn10">10</button>
            <button type="button" class="btn" id="btnNext">다음</button>
                        
        </div>
        
    </div>

    <br><br><br><br><br><br><br><br><br><br><br>
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
        
        let bstr;
        let sessionState = false;
        // page..
        let rowsPerPage = 10; // 페이지당 건수 (테이블에서 보여지는 최대건수)
        // row..
        let rowCount = 0; // 전체 건수
        // section..
        let curSection = 0; // 현재 섹션
        let pagesPerSection = 10; // 섹션당 페이지수(버튼의 개수와 같다.)
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
        const btnSearch = document.querySelector('#btnSearch');
        const search = document.querySelector('#search');
        const keyWord = document.querySelector('#keyWord');
        const searchType = document.querySelector('#searchType');
        const btnCombineSearch = document.querySelector('#btnCombineSearch');
        
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
                    sub : '${vo.sub}',
                    page : page,
                    rowsPerPage : rowsPerPage,
                    keyWord : '${vo.keyWord}'
                    
                };
                
                
                $.ajax({
                        url : '/bbs/combineSearch',
                        type : 'POST',
                        data : requestData,
                        success : function(data) //data : rowcount,bbsList
                        {                               
                            let bstr = '';
                            const tblBody = document.querySelector('#tblBBS>tbody');

                            // 전체 카운트를 저장.
                            rowCount = data.rowCount;
                            // 테이블 body를 채워준다.
                            tblBody.innerHTML = '';
                            if(data.bbsList.length == 0)
                            {
                                bstr += '<tr>';
                                    bstr += '<td class="text-center">등록된 글이 없습니다.</td>';
                                bstr += '</tr>';
                                
                                
                                tblBody.innerHTML += bstr;
                            }
                            else
                            {
                                for(let i = 0; i < data.bbsList.length; i++)
                            {
                                bstr = '';
                                bstr += '<tr>';
                                    bstr += '<td><a id="titleColor" href=\"/bbs/content?name=' + data.bbsList[i].name + '&seq=' + data.bbsList[i].seq + '&sub=' + data.bbsList[i].sub + '\">' + data.bbsList[i].title + '</a></td>';
                                bstr += '</tr>'; 
                                bstr += '<tr>';
                                    bstr += '<td id="contentStyle" class="text-left">' + data.bbsList[i].content + '</td>';   
                                bstr += '</tr>'; 
                                bstr += '<tr>';
                                    bstr += '<td><a id="boardcolor" href="/bbs/' + data.bbsList[i].sub + '">' + data.bbsList[i].sub + ' 게시판' + '</a>'
                                    + '&nbsp' + '&nbsp'+ '&nbsp' +'&nbsp'+'&nbsp'+  data.bbsList[i].regDate + '</td>';
                                    
                                bstr += '</tr>';


                                tblBody.innerHTML += bstr;
                                
                            }
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
    
    btnCombineSearch.addEventListener('click', ()=>{
        let reqData = {
            
            keyWord : keyWord.value
            
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