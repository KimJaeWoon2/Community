package com.project.community;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.community.bbs.BbsDAO;

import com.project.community.bbs.BbsTblVO;
import com.project.community.common.SessionUtil;
import com.project.community.user.UserTblVO;

@Controller
public class MainController {
   @Autowired
   BbsDAO bbsDAO;

   @GetMapping("/index")
   public String index(Model model) throws Exception
   {   
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");

      // index 또는 아무 페이지를 눌렀을 때 마다 Exception_mode의 변화와 댓글의 총개수를 업데이트 시켜준다.
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "index";
   }

   @GetMapping("/bbs/allbbs")
   public String allBbs(Model model) throws Exception
   {   
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/allbbs";
   }
   // jsp page ------------------------------------------------------------------------------

   @GetMapping("/bbs/best")
   public String best(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      return "bbs/best";
   }

   @GetMapping("/bbs/restaurant")
   public String restaurant(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");     
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/restaurant";
   }

   @GetMapping("/bbs/datecourse")
   public String datecourse(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/datecourse";
   }

   @GetMapping("/bbs/electronic")
   public String electronic(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/electronic";
   }

   @GetMapping("/bbs/animal")
   public String animal(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/animal";
   }

   @GetMapping("/bbs/car")
   public String car(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/car";
   }

   @GetMapping("/bbs/LOL")
   public String LOL(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      return "bbs/LOL";
   }

   @GetMapping("/bbs/fifa")
   public String fifa(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      return "bbs/fifa";
   }

   @GetMapping("/bbs/battleground")
   public String battleground(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      return "bbs/battleground";
   }

   @GetMapping("/bbs/overwatch")
   public String overwatch(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      return "bbs/overwatch";
   }

   @GetMapping("/bbs/suddenattack")
   public String suddenattack(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      return "bbs/suddenattack";
   }

   @GetMapping("/bbs/fashion")
   public String fashion(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/fashion";
   }

   @GetMapping("/bbs/trip")
   public String trip(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/trip";
   }

   @GetMapping("/bbs/hobby")
   public String hobby(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/hobby";
   }

   @GetMapping("/bbs/food")
   public String food(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/food";
   }

   @GetMapping("/bbs/relationship")
   public String relationship(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/relationship";
   }

   @GetMapping("/bbs/international")
   public String international(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/international";
   }

   @GetMapping("/bbs/economy")
   public String economy(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/economy";
   }

   @GetMapping("/bbs/entertainment")
   public String entertainment(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/entertainment";
   }

   @GetMapping("/bbs/movie")
   public String movie(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/movie";
   }

   @GetMapping("/bbs/news")
   public String news(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/news";
   }

   @GetMapping("/bbs/soccer")
   public String soccer(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/soccer";
   }

   @GetMapping("/bbs/baseball")
   public String baseball(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/baseball";
   }

   @GetMapping("/bbs/golf")
   public String golf(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/golf";
   }

   @GetMapping("/bbs/basketball")
   public String basketball(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/basketball";
   }

   @GetMapping("/bbs/volleyball")
   public String volleyball(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/volleyball";
   }

   @GetMapping("/bbs/stock")
   public String stock(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/stock";
   }

   @GetMapping("/bbs/virtual")
   public String virtual(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/virtual";
   }

   @GetMapping("/bbs/property")
   public String property(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/property";
   }

   @GetMapping("/bbs/gold")
   public String gold(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/gold";
   }

   @GetMapping("/bbs/currency")
   public String currency(Model model, BbsTblVO vo) throws Exception
   {  
      // 1. 요청한 놈이 세션이 있냐?
      UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
      
      BbsTblVO resultVO = vo;
      bbsDAO.updateRecommend();
      bbsDAO.updateHotRecommend();
      bbsDAO.updateAllRplyCount();
      model.addAttribute("recomvo", resultVO);
      // 2. 만약에 세션이 있다면 model에 사용자 정보를 저장해서 index.jsp로 보내준다.
      if(userTblVO != null)
      {
         model.addAttribute("vo", userTblVO);
      }
      
      return "bbs/currency";
   }
}
