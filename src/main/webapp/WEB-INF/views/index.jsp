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
  .welcome {
    margin-left: auto;
    
  }

  

/* 카테고리 */
*{padding:0;margin:0}
li{list-style:none}
a{text-decoration:none;font-size:18px}

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
/* 비디오와 비디오 안의 텍스트 */
  .video {
    position: relative;
    top: 100px;
    text-align: center;

  }

  .section0-message strong { /* 후손 선택 */
    font-size: 4.1rem;
    text-align: center;
  }

  .section0-message > p {
    position: relative;
    font-size: 2.9rem;
    top: -150px;
  }

  /* fadein */
  .section0-message {
    position: absolute;
    width: 100%;
    height: 0;
    left: 0;
    top: 0;
    letter-spacing: 0.8rem;

    animation: text-Dfadein 5s;
  }

  @keyframes text-Dfadein { /* 프레임 범위값 지정 */
    
    from {
        opacity: 0;
        transform: translateY(7em);
    }
    to {
        opacity: 1;
        transform: none;
    }
  }

  .title-name {
    font-size: 4rem;
    font-weight: 600;
    text-align: center;
    color: white;
    text-shadow: 0px 7.5px 10px rgb(20, 20, 20); /* px 좌우 상하  번짐 순*/
    margin-top: 13.5em;
  }

 /* ////////////////////////////////////////////////////////// */

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
  
  <!-- 0번 비디오 섹션 -->
  <div class="video">
    <video src="/image/comu4.mp4" autoplay loop muted width="850" height="600"></video>
  </div>
  <section id="section-0">
    <div class="section0-title">
        <div class="section0-message">
            <p class="title-name">
            <strong>우리들의 소통공간</strong>
            <br>
            이젠 커뮤니티 사이트
            </p>
        </div>
    </div>
</section>

  <br><br><br><br><br><br>
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
    let sessionState = false;
    const spnWelcome = document.querySelector('#spnWelcome');
    const btnLogin = document.querySelector('#btnLogin');
    const keyWord0 = document.querySelector('#keyWord0'); // 통합검색
    const btnCombineSearch = document.querySelector('#btnCombineSearch');

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
          spnWelcome.textContent = '${vo.name}님 반갑습니다.';
      }
      else
      {
          spnWelcome.textContent = '';

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
          keyWord : keyWord0.value
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

  setSessionState();
  setWelcomeMsg();    // 웰컴 메세지 설정
  setLoginButton();
  })();



</script>
</body>
</html>