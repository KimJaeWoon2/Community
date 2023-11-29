<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 카카오 간편 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 네이버 간편 로그인 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>

        .comu {
            text-align: center;
            margin-top: 75px;
        }

        h1 {
            margin-top: 20px;
            margin-bottom: 10px;
            text-align: center;
            font-weight: bold;
        }

        .login-container {
            border: 1px solid gray;
            border-radius: 10px;
            width: 450px;
            margin: 0 auto;
            padding: 10px;
            margin-top: 30px;
        }

        .my-button {
            margin-top: 5px;
            width: 100%;
            height: 50px;
        }

        .sub-container {
            width: 450px;
            margin: 0 auto;
        }

        .kakao {
            margin-top: 2px;
            width: 100%;
            height: 50px;
        }

        .naver {
            margin-top: 5px;
            width: 100%;
            height: 50px;
        }

        .kakaoBtn {
            margin-top: 30px;
            width: 20%;
            text-align: center;
            margin: 0 auto;
        }

        .kakaoLogin {
            margin-top: 10px;
            width: 100%;
            height: 50px;
        }

        .naverBtn {
            margin-top: 30px;
            width: 20%;
            text-align: center;
            margin: 0 auto;
        }

        .naverLogin {
            margin-top: 10px;
            width: 100%;
            height: 50px;
        }

    </style>
</head>
<body>
    <div class="comu">
        <a href="/index"><img src="/image/cumu1.png" width="150" height="150"></a>
    </div>
    <h1>커뮤니티 사이트</h1>
    <div class="login-container mb-2">
    <form action="/login" method="POST" id="frmLogin">
        <div class="form-floating">
            <input type="text" class="form-control" name="userId" id="userId" placeholder="#" name="">
            <label for="txtJoinId">ID</label>
        </div>
        <br>
        <div class="form-floating mb-2">
            <input type="password" class="form-control" name="userPw" id="userPw" placeholder="#">
            <label for="txtJoinPw">Password</label>
        </div>
    </form>

        <button type="button" id="btnLogin" class="btn btn-outline-dark my-button">로그인</button>
    </div>

    <div class="d-flex justify-content-between sub-container">
        <button type="button" id="btnFindId" class="btn btn-link">아이디 찾기</button>
        <button type="button" id="btnFindPw" class="btn btn-link">비밀번호 찾기</button>
        <button type="button" id="btnJoin" class="btn btn-link">회원가입</button>
        <button type="button" id="btnHome" class="btn btn-link">홈으로</button>
    </div>

    <!-- 카카오 간편 로그인 -->
    <div class="kakaoBtn">
        <div class="kakaoLogin">
            <div onclick="kakaoLogin();">
                <a href="javascript:void(0)">
                    <button type="button" id="btnKakao" class="btn btn-warning kakao">Kakao 로그인</button>
                </a>
            </div>
            <!-- <div onclick="kakaoLogout();">
                <a href="javascript:void(0)">
                    <span>카카오 로그아웃</span>
                </a>
            </div> -->
        </div>
    </div>
    <!-- 카카오 스크립트 -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
    Kakao.init('d50e0d7a5c82961f3ec44aea97f57a23'); //발급받은 키 중 javascript키를 사용해준다.
    console.log(Kakao.isInitialized()); // sdk초기화여부판단
    //카카오로그인
    function kakaoLogin() {
        Kakao.Auth.login({
        success: function (response) {
            Kakao.API.request({
            url: '/v2/user/me',
            success: function (response) {
                console.log(response)
            },
            fail: function (error) {
                console.log(error)
            },
            })
        },
        fail: function (error) {
            console.log(error)
        },
        })
    }
    // 카카오 로그아웃 함수
    // function kakaoLogout() {
    //     if (Kakao.Auth.getAccessToken()) {
    //     Kakao.API.request({
    //         url: '/v1/user/unlink',
    //         success: function (response) {
    //             console.log(response)
    //         },
    //         fail: function (error) {
    //         console.log(error)
    //         },
    //     })
    //     Kakao.Auth.setAccessToken(undefined)
    //     }
    // }  
    </script>

    <!-- 네이버 간편 로그인 -->
    <div class="naverBtn">
        <div class="naverLogin">
            <!-- 아래와같이 아이디를 꼭 써준다. -->
            <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                <button type="button" id="btnNaver" class="btn btn-success naver">Naver 로그인</button>
            </a>
            <!-- <div onclick="naverLogout(); return false;">
                <a href="javascript:void(0)">
                    <span>네이버 로그아웃</span>
                </a>
            </div> -->
        </div>
    </div>
    
    <!-- 네이버 스크립트 -->
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    
    <script>
    
    var naverLogin = new naver.LoginWithNaverId(
            {
                clientId: "fkmFdgJLPsaK0WNLWxYv", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                callbackUrl: "http://localhost:9090/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                isPopup: false,
                callbackHandle: true
            }
        );	
    
    naverLogin.init();
    
    window.addEventListener('load', function () {
        naverLogin.getLoginStatus(function (status) {
            if (status) {
                var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
                
                console.log(naverLogin.user);
                
                if( email == undefined || email == null) {
                    alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                    naverLogin.reprompt();
                    return;
                }
            }
            else {
                console.log("callback 처리에 실패하였습니다.");
            }
        });
    });
    
    // 네이버 로그아웃 함수
    // var testPopUp;
    // function openPopUp() {
    //     testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
    // }
    // function closePopUp(){
    //     testPopUp.close();
    // }
    
    // function naverLogout() {
    //     openPopUp();
    //     setTimeout(function() {
    //         closePopUp();
    //         }, 1000);
        
        
    // }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/JS/jquery-3.7.0.min.js"></script>
    <script>
    (()=>{   

        const btnLogin  = document.querySelector('#btnLogin');
        const btnFindPw  = document.querySelector('#btnFindPw');
        const btnFindId   = document.querySelector('#btnFindId');
        const btnJoin   = document.querySelector('#btnJoin');
        const btnHome = document.querySelector('#btnHome');

        ////////////////////////////////////////////////////////////////////
        // 이벤트 핸들러

        btnLogin.addEventListener('click', ()=>{
            // form DOM을 가지고온다.
            const frmLogin = document.querySelector('#frmLogin');
            // form DOM의 submit 함수를 호출한다.
            frmLogin.submit();
        });

        btnHome.addEventListener('click', ()=>{
            location.href = '/index';
        });

        btnJoin.addEventListener('click', ()=>{
            location.href = '/user/join';
        });

        btnFindId.addEventListener('click', ()=>{
            location.href = '/user/idinquiry';
        });

        btnFindPw.addEventListener('click', ()=>{
            location.href = '/user/pwinquiry';
        });

    })(); 
    </script>
</body>
</html>