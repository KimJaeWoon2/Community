<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" >
<style>
    /* 레이아웃 틀 */
html {
    height: 100%;
}

body {
    margin: 0;
    height: 100%;
    background: #f5f6f7;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
}
#logo {
    width: 400px;
    height: 150px;
    cursor: pointer;
}

#header {
    padding-top: 62px;
    padding-bottom: 20px;
    text-align: center;
}
#wrapper {
    position: relative;
    height: 100%;
}

#content {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 460px;
}




/* 입력폼 */

input:focus {
    outline: none;
}


h3 {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}


.box {
    display: block;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    background: #fff;
    position: relative;
}

.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
}

input {
    font-family: Dotum,'돋움',Helvetica,sans-serif;    
}

.box.int_id {
    padding-right: 110px;
}

.box.int_pass {
    padding-right: 40px;
}

.box.int_pass_check {
    padding-right: 40px;
}

.stepbutton {
    
    position: absolute;
    top: 16px;
    right: 13px;
    font-size: 15px;
    
    
}

.pswdImg {
    width: 18px;
    height: 20px;
    display: inline-block;
    position: absolute;
    top: 50%;
    right: 16px;
    margin-top: -10px;
    cursor: pointer;
}



select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
    
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
}

/* 에러메세지 */

.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;    
    display: none;
}

#alertTxt {
    position: absolute;
    top: 19px;
    right: 38px;
    font-size: 12px;
    color: red;
    display: none;
}

/* 버튼 */

.btn_area {
    margin: 30px 0 91px;
}

#btnJoin {
    width: 100%;
    padding: 21px 0 17px;
    border: 0;
    cursor: pointer;
    color: #fff;
    background-color: #0fa6cc;
    font-size: 20px;
    font-weight: 400;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
}


</style>
</head>
<body>
         <!-- header -->
      <div id="header">
        <a href="/user/login"><img src="/image/cumu1.png" width="150" height="150"></a>
        
      </div>
    


    <!-- wrapper -->
    <div id="wrapper">

        <!-- content-->
        <div id="content">

            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">아이디</label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="txtUserId" class="int" maxlength="20" placeholder="7글자 이하로 작성해주세요.">
                    <span class="stepbutton"><button type="button" id="btnCheckId">중복확인</button></span>
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                <span class="box int_pass">
                    <input type="text" id="txtUserPw" class="int" maxlength="20">
                    <span id="alertTxt">사용불가</span>
                    <img src="/image/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                <span class="box int_pass_check">
                    <input type="text" id="txtCheckPw" class="int" maxlength="20">
                    <img src="/image/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="name">닉네임</label></h3>
                <span class="box int_name">
                    <input type="text" id="txtName" class="int" maxlength="20" placeholder="7글자 이하로 작성해주세요.">
                    <span class="stepbutton"><button type="button" id="btnCheckName">중복확인</button></span>
                </span>
                <span class="error_next_box"></span>
            </div>

           

            
            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                <span class="box int_email">
                    <input type="text" id="txtEmail" class="int" maxlength="100" >
                </span>
                <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
            </div>

        

            <!-- JOIN BTN-->
            <div class="btn_area">
                <button type="button" id="btnJoin">
                    <span>가입하기</span>
                </button>
            </div>

            

        </div> 
        <!-- content-->

    </div> 
    <!-- wrapper -->
<!-- <script src="main.js"></script> -->






<script src="/JS/jquery-3.7.0.min.js"></script>
<script>
(()=>{   
    const txtUserId = document.querySelector('#txtUserId');
    const txtUserPw = document.querySelector('#txtUserPw');
    const txtName = document.querySelector('#txtName');
    const txtEmail = document.querySelector('#txtEmail');
    const btnJoin = document.querySelector('#btnJoin');
    const btnCheckId = document.querySelector('#btnCheckId');
    const btnCheckName = document.querySelector('#btnCheckName');
    
    
    let idChecking = false;         // 중복확인을 통과하면 true로 변경.
    let nameChecking = false;       // 중복확인을 통과하면 true로 변경.
    let checkedId = '';             // 체크가 완료된 아이디
    let checkedName = '';           // 체크가 완료된 닉네임

    //////////////////////////////////////////////////////////////////////
    // 함수
    const checkJoinData = function()
    {
        if ((idChecking === false) || (checkedId != txtUserId.value))
        {
            alert('아이디 중복확인을 해주세요.');
            txtUserId.value = '';
            txtUserId.focus();

            return false;
        }

        if (txtUserPw.value.length === 0)
        {
            alert('비밀번호를 넣어주세요');
            txtUserPw.value = '';
            txtCheckPw.value = '';
            txtUserPw.focus();

            return false;

        }

        if (txtUserPw.value != txtCheckPw.value)
        {
            alert('비밀번호와 비밀번호 확인이 서로 다릅니다.');
            txtCheckPw.value = '';
            txtCheckPw.focus();

            return false;

        }

        if (txtName.value.length === 0)
        {
            alert('이름을 넣어주세요');
            txtName.focus();
            return false;
        }

        if ((nameChecking === false) || (checkedName != txtName.value))
        {
            alert('닉네임 중복확인을 해주세요.');
            txtName.value = '';
            txtName.focus();

            return false;
        }

        if (txtEmail.value.length === 0)
        {
            alert('이메일을 넣어주세요');
            txtEmail.focus();
            return false;
        }

        return true;
    }

    const resetPage = function()
    {
        txtUserId.value = '';
        txtUserPw.value = '';
        txtCheckPw.value = '';
        txtName.value = '';
        txtEmail.value = '';

        idChecking = false;
        checkedId = '';     
        txtUserId.focus();

    }

    //////////////////////////////////////////////////////////////////////
    // 이벤트 핸들러.
    
    
    btnJoin.addEventListener('click', ()=>{
        // 데이터를 검사한다.
        if (false === checkJoinData()){
            return;

        }

        // 가입을 위한 요청데이터를 만든다.
        let requestData = {
            userId : txtUserId.value,
            userPw : txtUserPw.value,
            name : txtName.value,
            email : txtEmail.value 
        };

        $.ajax({
            url : '/join',
            type : 'POST',
            data : requestData,
            success : function(data)
            {
                if (data === 'OK') {
                    alert('회원 가입 완료, 로그인 해주세요');
                    location.href = '/user/login';
                }
                else{
                    alert('회원 가입 실패');
                    resetPage();

                }
            }

        });


        
    });

    // 아이디 중복확인
    btnCheckId.addEventListener('click', ()=>{
        if (txtUserId.value.length === 0)
        {
            return;
        }
        
        //1. 아이디를 가지고 온다.
        let id = txtUserId.value;

        let requestData = {
            userId : id
        };

        console.log(requestData);

        $.ajax({
            url: '/checkid',
            type : 'POST',
            data : requestData,
            success : function(data)
            {
                if (data === "OK") {
                    alert('가입할 수 있는 아이디입니다');
                    idChecking = true;
                    checkedId = id;     // 체크가 된 아이디를 저장한다.
                    txtUserPw.focus();
                }
                else{
                    alert('이미 가입된 아이디가 있습니다.');
                    idChecking = false;
                    txtUserId.value = '';
                    txtUserId.focus();

                }

            }
        })

        
    });


    // 닉네임 중복확인
    btnCheckName.addEventListener('click', ()=>{
        if (txtName.value.length === 0)
        {
            return;
        }
        
        //1. 닉네임을 가지고 온다.
        let name = txtName.value;

        let requestData = {
            name : name
        };

        console.log(requestData);

        $.ajax({
            url: '/checkname',
            type : 'POST',
            data : requestData,
            success : function(data)
            {
                if (data === "OK") {
                    alert('가입할 수 있는 닉네임입니다');
                    nameChecking = true;
                    checkedName = name;     // 체크가 된 닉네임을 저장한다.
                    txtEmail.focus();
                }
                else{
                    alert('이미 가입된 닉네임이 있습니다.');
                    nameChecking = false;
                    txtName.value = '';
                    txtName.focus();

                }

            }
        })

        
    });
   
    const checkIdlength = function()
    {
        if (txtUserId.value.length > 7)
        {
            alert('아이디는 7자 이하로 맞춰주세요.');
            txtUserId.focus();
            txtUserId.value = '';
            return false;
        }
        return true;
    }

    document.addEventListener("input", checkIdlength);

    const checkNamelength = function()
    {
        if (txtName.value.length > 7)
        {
            alert('닉네임은 7자 이하로 맞춰주세요.');
            txtName.focus();
            txtName.value = '';
            return false;
        }
        return true;
    }

    document.addEventListener("input", checkNamelength);

})(); 
</script>
        
</body>