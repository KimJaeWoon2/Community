<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
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

      

        #positionbtn {
            position: relative;
            top: 50px;
        }
    </style>
<body>
    <div class="comu">
            <img src="/image/cumu1.png" width="150" height="150">
        </div>
        <h1>커뮤니티 사이트</h1>
        <div class="login-container mb-2">
        <div>
            <div class="form-floating">
                <input type="text" class="form-control" name="join" id="txtJoinId" placeholder="#" name="">
                <label for="txtJoinId">ID</label>
            </div>
            <br>
            <!-- <div class="form-floating mb-2">
                <input type="password" class="form-control" name="userPw" id="userPw" placeholder="#">
                <label for="txtJoinPw">Password</label>
            </div> -->
        <div>
    
            <button type="button" id="btnSubmit" class="btn btn-outline-dark my-button">비밀번호 찾기</button>
        </div>
    
        <div class="d-flex justify-content-between sub-container" id="positionbtn">
            <button type="button" id="btnLogin" class="btn btn-link">로그인</button>
            <button type="button" id="btnFindId" class="btn btn-link">아이디 찾기</button>
            <button type="button" id="btnJoin" class="btn btn-link">회원가입</button>
            <button type="button" id="btnHome" class="btn btn-link">홈으로</button>
        </div>
    

<script src="/JS/jquery-3.7.0.min.js"></script>
<script>
(()=>{   
    const txtJoinId = document.querySelector('#txtJoinId');
    const btnFindId = document.querySelector('#btnFindId');
    const btnSubmit = document.querySelector('#btnSubmit');
    const btnLogin = document.querySelector('#btnLogin');
    const btnJoin = document.querySelector('#btnJoin');
    const btnHome = document.querySelector('#btnHome');


    btnHome.addEventListener('click', ()=>{
        location.href = '/index';
    });

    btnJoin.addEventListener('click', ()=>{
        location.href = '/user/join';
    });

    btnFindId.addEventListener('click', ()=>{
        location.href = '/user/idinquiry';
    });

    btnLogin.addEventListener('click', ()=>{
        location.href = '/user/login';
    });

    btnSubmit.addEventListener('click', ()=>{

console.log("비밀번호찾기 버튼")
// 1. 아이디 데이터를 가지고 온다.
let userId = txtJoinId.value;

    if (userId.length === 0)
    {
        return;
    }

    // 2. 아이디를 전송 할 객체를 만들어준다.
    let requestData = {
        userId : userId // key-value 값이 같으면 하나만 써도 가능 (ex. joinId)
    };

    // 3. 서버에 전송한다.
    $.ajax({
    url : '/pwinquiry',
    type : 'POST',
    data : requestData,
    success : function(data)
    {
        if (data === '$FAIL')
        {
            alert("아이디가 없습니다.");
        }
        else
        {
            alert("비밀번호를 메일로 전송하였습니다.");
            location.href = '/user/login';

        }
    }
});
})
    
})(); 
</script>
        
</body>