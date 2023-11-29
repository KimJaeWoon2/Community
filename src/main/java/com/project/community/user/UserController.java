package com.project.community.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.community.common.GmailSender;
import com.project.community.common.SessionUtil;

@Controller
public class UserController {
    @Autowired
    private UserDAO userdao;

    @GetMapping("/user/login")
    public String login()
    {
        return "user/login";
    }

    @PostMapping("/login")
    public void login(@ModelAttribute("UserTblVO") UserTblVO vo,
    HttpServletRequest request, HttpServletResponse response) throws Exception
    {   
        // 1. DB에 해당 계정이 있는지를 조회.
        UserTblVO resultVO = userdao.selectOneUser(vo);
        
        // 로그인 정보가 있다.
        if (resultVO != null)
        {   
            // 세션을 저장한다.
            SessionUtil.set(request, "USER", resultVO);
            
            response.sendRedirect("index");

        }
        else
        {
            response.sendRedirect("user/login");
            System.out.println("아이디/패스워드가 틀렸습니다");
        }                      
        
        
        
    }

    @GetMapping("/logout")
        public void logout(HttpServletRequest request, 
        HttpServletResponse response) throws Exception
        {
            SessionUtil.remove(request, "USER");
            response.sendRedirect("index");
        }
    
    

    @GetMapping("/user/idinquiry")
    public String idInquiry()
    {
        return "user/idinquiry";
    }

    @PostMapping("/idinquiry")
    @ResponseBody
    public String idInquiry(@ModelAttribute("UserTblVO") UserTblVO vo) throws Exception
    {
        String id = "";
        int len = 0;

        UserTblVO resultVO = userdao.selectOneUserByEmail(vo);

        if (resultVO != null) {

            len = resultVO.getUserId().length();
            id = resultVO.getUserId().substring(0, len - 2);
            id += "**";

            return id;
        }
        else {
            return "$FAIL"; // 아이디에 특수문자를 못넣는다는 가정하에 아이디와 겹치지않게 특수문자를 넣어준다.
        }
    }

    @GetMapping("/user/pwinquiry")
    public String pwInquiry()
    {
        return "user/pwinquiry";
    }

    @PostMapping("/pwinquiry")
    @ResponseBody
    public String pwInquiry(@ModelAttribute("UserTblVO") UserTblVO vo) throws Exception
    {
        UserTblVO resultVO = userdao.selectOneUserById(vo);

        System.out.println("확인용 : " + vo.getUserId());

        String senderName = "kimdongwook0809@gmail.com";
        String senderPasswd = "ytsfyhtfqjlzrcoc";
        GmailSender gmailSender = null;

        if (resultVO == null) {

            return "$FAIL";
        }
        else {
            // 비밀번호를 메일로 전송
            gmailSender = new GmailSender(senderName, senderPasswd);
            // 1param : 받을 사람의 이메일주소
            // 2param : 메일 제목
            // 3param : 메일 내용
            gmailSender.sendEmail(resultVO.getEmail(), "비밀번호 입니다.", "비밀번호 : " + resultVO.getUserPw());

            return "$OK";
        }
    }


    @GetMapping("/user/join")
    public String join()
    {
        return "user/join";
    }

    @PostMapping("/checkid")
    @ResponseBody
    public String checkId(@ModelAttribute("UserTblVO") UserTblVO vo) throws Exception
    {
        UserTblVO resultVO = userdao.selectOneUserExist(vo);

        if (resultVO != null) {
            return "FAIL";
        }
        else {
            return "OK";
        }

    }

    @PostMapping("/join")
    @ResponseBody
    public String join(@ModelAttribute("UserTblVO") UserTblVO vo) throws Exception
    {        
        // DB에 insert시켜준다.
        int count = userdao.insertUser(vo);

        // insert 결과가 1이라면 "OK"를 전송한다. 그렇지 않다면 "FAIL"
        if (count == 1) {
            return "OK";
        }   
        else {
            return "FAIL";
        }  
        
    }


    @PostMapping("/checkname")
    @ResponseBody
    public String checkname(@ModelAttribute("UserTblVO") UserTblVO vo) throws Exception
    {
        UserTblVO resultVO = userdao.selectOneUserName(vo);

        if (resultVO != null) {
            return "FAIL";
        }
        else {
            return "OK";
        }

    }
}
