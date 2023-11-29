package com.project.community.bbs;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.community.common.SessionUtil;
import com.project.community.file.FileService;
import com.project.community.file.FileVO;
import com.project.community.like.LikeDAO;
import com.project.community.like.LikeVO;
import com.project.community.rply.RplyDAO;
import com.project.community.rply.RplyTblVO;
import com.project.community.user.UserTblVO;

@Controller
public class BbsController {
    @Autowired
    BbsDAO bbsDAO;

    @Autowired
    LikeDAO likeDAO;

    @Autowired
    RplyDAO rplyDAO;

    @Value("${file.upload-dir}")
    private String uploadDir;
    
    @Autowired
    FileService fileService;

    @PostMapping("/list") // 게시판 처리 부분
    @ResponseBody   
    public BbsMstVO bbsList(@ModelAttribute("BbsTblVO")BbsTblVO vo,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {                  
        BbsMstVO bbsMstVO = new BbsMstVO();        
        // 현재 게시판의 개수를 가지고온다.
        int rowCount = bbsDAO.selectBbsFashionRowCount(vo);
        // 한페이지의 해당하는 BBS데이터를 가지고 온다.
        List<BbsTblVO> list = bbsDAO.selectBbsFashionList(vo);

        // sysdate 값을 오늘이면 HH:MM 으로 나타내고 아니라면 yyyy-mm-dd로 나타내준다.
        for (BbsTblVO bbs : list) {
            LocalDateTime regDateTime = LocalDateTime.parse(bbs.getRegDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            LocalDateTime now = LocalDateTime.now();
            LocalDate currentDate = now.toLocalDate();

            if (currentDate.equals(regDateTime.toLocalDate())) {
                String formattedTime = regDateTime.format(DateTimeFormatter.ofPattern("HH:mm"));
                bbs.setRegDate(formattedTime);
            } else {
                String formattedDate = regDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                bbs.setRegDate(formattedDate);
            }
        }        
        //3. BbsMstVO 저장하고 전송한다.
        bbsMstVO.setRowCount(rowCount);
        bbsMstVO.setBbsList(list);
        SessionUtil.set(request, "BBS", bbsMstVO);
        return bbsMstVO;
    }

    @PostMapping("/hotlist")
    @ResponseBody   // divi, page, rowsPerPage
    public BbsMstVO bbsHotList(@ModelAttribute("BbsTblVO")BbsTblVO vo,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {                  
        BbsMstVO bbsMstVO2 = new BbsMstVO();        
        //1. 전체 row의 개수를 가지고온다.
        int rowCount = bbsDAO.selectBbsBestRowCount(vo);
        
        //2. page의 해당하는 BBS데이터를 가지고 온다.
        List<BbsTblVO> list = bbsDAO.selectBbsBestList(vo);

        // sysdate 값을 오늘이면 HH:MM 으로 나타내고 아니라면 yyyy-mm-dd로 나타내준다.
        for (BbsTblVO bbs : list) {
            LocalDateTime regDateTime = LocalDateTime.parse(bbs.getRegDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            LocalDateTime now = LocalDateTime.now();
            LocalDate currentDate = now.toLocalDate();

            if (currentDate.equals(regDateTime.toLocalDate())) {
                String formattedTime = regDateTime.format(DateTimeFormatter.ofPattern("HH:mm"));
                bbs.setRegDate(formattedTime);
            } else {
                String formattedDate = regDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                bbs.setRegDate(formattedDate);
            }
        }
        
        //3. BbsMstVO 저장하고 전송한다.
        bbsMstVO2.setRowCount(rowCount);
        bbsMstVO2.setBbsList(list);
        SessionUtil.set(request, "BBS", bbsMstVO2);
        return bbsMstVO2;
    }

    @GetMapping("/bbs/search")       // divi, page, rowsPerPage
    public String search(@ModelAttribute("BbsTblVO")BbsTblVO vo,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {   
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));

        BbsTblVO resultVO = vo; // keyword, SearchType을 담아 준다.
        
        model.addAttribute("vo", resultVO); // jsp에 뿌려주기 위해 resultVO를 모델에 담아준다. 
        model.addAttribute("session", userTblVO);
        return "bbs/search";
    }

    @PostMapping("/bbs/search")
    @ResponseBody   // divi, page, rowsPerPage
    public BbsMstVO bbsSearchList(@ModelAttribute("BbsTblVO")BbsTblVO vo,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {   
        
        BbsMstVO bbsMstVO = new BbsMstVO();
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));

        if(vo.getSub().length() != 0) // 평범한 게시판
        {
            int rowCount = bbsDAO.selectBbsSearchRowCount(vo);       
            List<BbsTblVO> list = bbsDAO.selectBbsSearchList(vo);
            for (BbsTblVO bbs : list) {
            LocalDateTime regDateTime = LocalDateTime.parse(bbs.getRegDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            LocalDateTime now = LocalDateTime.now();
            LocalDate currentDate = now.toLocalDate();

            if (currentDate.equals(regDateTime.toLocalDate())) {
                String formattedTime = regDateTime.format(DateTimeFormatter.ofPattern("HH:mm"));
                bbs.setRegDate(formattedTime);
            } else {
                String formattedDate = regDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                bbs.setRegDate(formattedDate);
            }
        }
            bbsMstVO.setRowCount(rowCount);
            bbsMstVO.setBbsList(list);
        }

        else // Hot인기글 
        {
            int rowCount = bbsDAO.selectBbsBestSearchRowCount(vo);
            List<BbsTblVO> list = bbsDAO.selectBbsBestSearchList(vo);
            for (BbsTblVO bbs : list) {
            LocalDateTime regDateTime = LocalDateTime.parse(bbs.getRegDate(), DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
            LocalDateTime now = LocalDateTime.now();
            LocalDate currentDate = now.toLocalDate();

            if (currentDate.equals(regDateTime.toLocalDate())) {
                String formattedTime = regDateTime.format(DateTimeFormatter.ofPattern("HH:mm"));
                bbs.setRegDate(formattedTime);
            } else {
                String formattedDate = regDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                bbs.setRegDate(formattedDate);
            }
        }
            bbsMstVO.setRowCount(rowCount);        
            bbsMstVO.setBbsList(list);
        }
        
        //3. BbsMstVO 저장하고 전송한다.
        SessionUtil.set(request, "BBS", bbsMstVO);
        model.addAttribute("session", userTblVO);
        return bbsMstVO;
    }

    @GetMapping("/bbs/content")
    public String content(@ModelAttribute("BbsTblVO") BbsTblVO vo,
    HttpServletRequest request, HttpServletResponse response,
    Model model) throws Exception
    {   
        BbsTblVO resultVO = bbsDAO.selectBbsFashionContent(vo);
       
        // 세션정보를 가지고 온다.
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));
        
        resultVO.setContent(resultVO.getContent().replaceAll("\n", "<br>&nbsp;&nbsp;")); // 엔터를 눌렀을 때 컨텐츠.jsp 표시할때 br로 표시해줌
        
        
        if(resultVO.getFileVO() == null)
        {
            model.addAttribute("vo", resultVO);     
        }
        else // 파일이 있으면 모델에 담아준다.
        {   
            model.addAttribute("vo", resultVO);
            model.addAttribute("filevo", resultVO.getFileVO());
        }
        model.addAttribute("session", userTblVO);  // login user
        
        
        
        // 자기 아이디라면 조회수가 증가 하지 않고 나머지는 증가한다.
        if(userTblVO == null)   // 비회원인 경우 조회수가 증가한다.
        {
            bbsDAO.updateViewCount(vo);
           
        }
        else
        {
            if(!resultVO.getUserId().equals(userTblVO.getUserId())) // 현재 로그인한 아이디가 아니라면 조회수가 증가한다.
            {
                bbsDAO.updateViewCount(vo);
            }
            else
            {
                
            }
        }
        
        return "bbs/content";
    }
    
    @PostMapping("/bbs/content")
    @ResponseBody               // userId, seq, title, content --> vo
    public String content(@ModelAttribute("BbsTblVO") BbsTblVO vo) throws Exception
    {   
        return "OK";   
    }

    @PostMapping("/bbs/likecontent")
    @ResponseBody               // userId, seq, title, content --> vo
    public String likecontent(@ModelAttribute("BbsTblVO") BbsTblVO vo, LikeVO likeVO) throws Exception
    {   
        
        int checkCount = likeDAO.checkLike(likeVO); // 로그인한 아이디가 추천을 했는지 안했는지 검사.
        if(checkCount == 0)
        {
            bbsDAO.updateLikeCount(vo); // 추천버튼을 누르면 bbs table의 likecount가 1씩 증가.              
            likeDAO.insertLike(likeVO); //  mplike Table의 likecount를 1 추가
            return "OK"; 
        }
        else
        {
            return "FAIL";
        }
                               
    }
    @PostMapping("/bbs/dislikecontent")
    @ResponseBody               // userId, seq, title, content --> vo
    public String dislikecontent(@ModelAttribute("BbsTblVO") BbsTblVO vo, LikeVO likeVO) throws Exception
    {   
        int checkCount = likeDAO.checkLike(likeVO); // 로그인한 아이디가 추천을 했는지 안했는지 검사.
        if(checkCount == 0)
        {
            bbsDAO.updateDisLikeCount(vo); // 비추천버튼을 누르면 bbs table의 likecount가 -1씩 증가. 
            likeDAO.insertLike(likeVO);    // mplike Table의 likecount를 1 추가
            return "OK";
        }
        else
        {
            return "FAIL";
        }
                        
    }
    @PostMapping("/bbs/deletecontent")
    @ResponseBody               // userId, seq, title, content --> vo
    public String deleteContent(@ModelAttribute("BbsTblVO") BbsTblVO vo,
    RplyTblVO vo2, LikeVO vo3
    ) throws Exception
    {   
        // 글을 삭제할 때 참조되었던 댓글과 mplike table을 모두 지워준다.       
        rplyDAO.deleteRplyAllContent(vo2);
        likeDAO.deleteLike(vo3);
        int deleteCount = bbsDAO.deleteBbsContent(vo);        
        if((deleteCount == 1))
        {
            return "OK";
        }
        
        else
        {
            return "FAIL";
        }                
    }

    @GetMapping("/bbs/newcontent")
    public String newContent(@ModelAttribute("BbsTblVO") BbsTblVO vo,
    Model model) throws Exception
    {   
        BbsTblVO subVO = vo; 
                
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));        
        model.addAttribute("session", userTblVO);  // login user
        model.addAttribute("BBS", subVO);
        
        return "bbs/newcontent";
    }

    @PostMapping("/bbs/newcontent")
    @ResponseBody               // userId, seq, title, content --> vo
    public ResponseEntity<String> newContent(@ModelAttribute("BbsTblVO") BbsTblVO vo,
    HttpServletRequest request, HttpServletResponse response) throws Exception
    {                  
        FileVO fileVO = null;

        // 파일을 전송받았다면 파일을 저장하고 FILE_TBL에 insert를 시켰다.
        if(vo.getThumbnail() != null)
        {   
            // fileVO 설정
            fileVO = new FileVO();
            fileVO.setMultiFile(vo.getThumbnail());
            fileVO.setFilePath(uploadDir + "member/thumbnail");

            // 파일에 저장하고 FILE_TBL에 해당 정보를 저장한다.
            fileVO = fileService.createFile(fileVO);
            fileService.insertFileTbl(fileVO);

            // MemberVO에 filecode를 설정해준다.
            vo.setFileCode(fileVO.getFileCode());
        }
        // 글 등록.
        bbsDAO.insertBbsContent(vo);
        
            
        return new ResponseEntity<String>("JOIN_SUCESS", HttpStatus.OK);
        
    }

    @GetMapping("/bbs/modify")
    public String modify(@ModelAttribute("BbsTblVO") BbsTblVO vo,
    Model model) throws Exception
    {   
        BbsTblVO resultVO = bbsDAO.selectBbsFashionContent(vo);
       resultVO.setContent(resultVO.getContent().replaceAll("<br>", "\n")); // 수정을 할 때 내용을 그대로 가져오기 위해 <br>태그를 엔터로 바꿈
       
        BbsMstVO bbsMstVO = (BbsMstVO) SessionUtil.getAttribute("BBS");        
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));        
        model.addAttribute("session", userTblVO);  // login user
        model.addAttribute("BBS", bbsMstVO);
        model.addAttribute("vo", resultVO);
        
        return "bbs/modify";
    }

    @PostMapping("/bbs/modify")
    @ResponseBody               // userId, seq, title, content --> vo
    public String modify(@ModelAttribute("BbsTblVO") BbsTblVO vo) throws Exception
    {   
        
        int updateCount = bbsDAO.updateBbsContent(vo); // 수정 해줌
         
        if((updateCount == 1))
        {
            return "OK";
        }
        
        else
        {
            return "FAIL";
        }
        
        
        
    }

    @GetMapping("/bbs/combineSearch")       // divi, page, rowsPerPage
    public String combinesearch(@ModelAttribute("BbsTblVO")BbsTblVO vo,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {           
        BbsTblVO resultVO = vo;
         UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));
        model.addAttribute("vo", resultVO);
        model.addAttribute("session", userTblVO);  // login user

        return "bbs/combineSearch";
    }

    @PostMapping("/bbs/combineSearch")
    @ResponseBody   // divi, page, rowsPerPage
    public BbsMstVO combine(@ModelAttribute("BbsTblVO")BbsTblVO vo,
    Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        BbsMstVO bbsMstVO = new BbsMstVO();
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute(("USER"));
        //1. 전체 row의 개수를 가지고온다.
        int rowCount = bbsDAO.selectBbsCombineSearchRowCount(vo);
        
        //2. page의 해당하는 BBS데이터를 가지고 온다.
        
        List<BbsTblVO> list3 = bbsDAO.selectBbsCombineSearchList(vo);
        
        //3. BbsMstVO 저장하고 전송한다.
        bbsMstVO.setRowCount(rowCount);
        
        bbsMstVO.setBbsList(list3);
        
        SessionUtil.set(request, "BBS", bbsMstVO);
        model.addAttribute("session", userTblVO);
        return bbsMstVO;
    }
}
