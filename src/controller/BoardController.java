package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawner;
import entity.Pawnshop;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class BoardController {
	
	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	@RequestMapping("/board")
	public ModelAndView board(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("board.jsp");
		return mv;
	}
	
	@RequestMapping("/pawnerList")
	public ModelAndView pawnerList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerList.jsp");
		List<Pawner> pawnerList;
		try {
			pawnerList = pmService.getAllPawner();
			mv.addObject("pawnerList", pawnerList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawnshopList")
	public ModelAndView pawnshopList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopList.jsp");
		List<Pawnshop> pawnshopList;
		try {
			pawnshopList = pawnshopServ.getAllPawnshop();
			mv.addObject("pawnshopList", pawnshopList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

}
