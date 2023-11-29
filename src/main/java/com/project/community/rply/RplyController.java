package com.project.community.rply;

import org.springframework.stereotype.Controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.community.bbs.BbsDAO;
import com.project.community.bbs.BbsTblVO;
import com.project.community.common.SessionUtil;
import java.time.Duration;

@Controller
public class RplyController {
    @Autowired
    RplyDAO rplyDAO;

    @Autowired
    BbsDAO bbsDAO;
    
    @PostMapping("/rply/list")
    @ResponseBody   
    public RplyMstVO rplyList(@ModelAttribute("RplyTblVO")RplyTblVO vo, BbsTblVO vo2,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        RplyMstVO rplyMstVO = new RplyMstVO();
        
        //1. 해당게시글의 댓글 개수를 가지고온다.
        int rowCount = rplyDAO.selectRplyFashionRowCount(vo);
        
        
        //2. page의 해당하는 BBS데이터를 가지고 온다.
        List<RplyTblVO> list = rplyDAO.selectRplyFashionList(vo);
        //3. 댓글의 개수를 게시판 제목 옆에다가 표현하기 위해 ezbbs 테이블의 rplyRowcount를 업데이트 시켜줌.
        bbsDAO.updateRplyCount(vo2);

        LocalDateTime now = LocalDateTime.now();

        // 오늘이면 ~초전, ~분전 , ~시간전으로 나타내고
        // 오늘이 아니라면 yyyy-mm-dd 형식으로 나타내준다.
        for (RplyTblVO bbs : list) {
            LocalDateTime regDateTime = LocalDateTime.parse(bbs.getRegDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

            Duration duration = Duration.between(regDateTime, now);

            if (duration.toMinutes() < 1) {
                long secondsAgo = duration.getSeconds();
                bbs.setRegDate(secondsAgo + "초 전");
            } else if (duration.toHours() < 1) {
                long minutesAgo = duration.toMinutes();
                bbs.setRegDate(minutesAgo + "분 전");
            } else if (duration.toDays() < 1) {
                long hoursAgo = duration.toHours();
                bbs.setRegDate(hoursAgo + "시간 전");
            } else {
                String formattedDate = regDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                bbs.setRegDate(formattedDate);
            }
        }
        //3. RplyMstVO 저장하고 전송한다.
        rplyMstVO.setRowCount(rowCount);
        rplyMstVO.setRplyList(list);
        SessionUtil.set(request, "Rply", rplyMstVO);
        
        return rplyMstVO;
    }

    
    @PostMapping("/rply/newcontent")
    @ResponseBody               
    public String newContent(@ModelAttribute("RplyTblVO") RplyTblVO vo) throws Exception
    {   
        // 댓글 추가
        int insertCount = rplyDAO.insertRplyContent(vo);
    
        if(insertCount == 1)
        {
            return "OK";
        }
        else
        {
            return "FAIL";
        }      
    }

    @PostMapping("/deletecontent")
    @ResponseBody              
    public String deleteContent(@ModelAttribute("RplyTblVO") RplyTblVO vo) throws Exception
    {   
        // 댓글 삭제
        int deleteCount = rplyDAO.deleteRplyContent(vo);
        if((deleteCount > 0))
        {
            return "OK";
        }
        
        else
        {
            return "FAIL";
        }                
    }
}
