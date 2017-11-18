package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import entity.Gold;
import entity.Pawner;
import entity.Pawnshop;
import service.GoldService;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class GoldController {
	
	@EJB(mappedName = "ejb:/BoonEJB//GoldServiceBean!service.GoldService")
	GoldService goldService;
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	@RequestMapping("/goldForm")
	public ModelAndView newGold(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerGoldForm.jsp");
		
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		Gold gold = new Gold();
		gold.setPawner(pm);
		mv.addObject("pawner", pm);
		mv.addObject("gold", gold);
		return mv;
	}
	
	@RequestMapping("/saveGold")
	public String saveGold(@ModelAttribute("gold") Gold gold, BindingResult result,
			HttpServletRequest request) {
		try {
			System.out.println(gold.getClass());
			// check if saving a new phone
			if (0 == gold.getGoldId()) { // 0 == phone.getPhoneId()
				goldService.insert(gold);
				// phone is existed
			} else {
				goldService.update(gold);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:listGold.do?pawnerId="+request.getSession().getAttribute("id");
	}
	
	@RequestMapping("/editGold")
	public ModelAndView editGold(HttpServletRequest request) {
		int goldId = Integer.parseInt(request.getParameter("id"));
		Gold foundGold;
		ModelAndView mv = new ModelAndView("goldForm.jsp");
		try {
			foundGold = goldService.findGoldById(goldId);
			mv.addObject("foundGold", foundGold);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/deleteGold")
	public String removeGold(HttpServletRequest request) {
		String pawnerId = (String) request.getSession().getAttribute("pawner"); // ***************warring
		long goldId = Long.parseLong(request.getParameter("id"));
		goldService.delete(goldId);
		return "redirect:listGold.do";
	}
	
	@RequestMapping("/listGold")
	public ModelAndView listGold(HttpServletRequest request) {
		String pawnerId = null;
		// check if pararameter passed
		if (request.getParameter("pawnerId") != null) {
			// add parameter value to session
			pawnerId = request.getParameter("pawnerId");
			request.getSession().setAttribute("pawner", pawnerId);
		} else {
			// get parameter from session
			pawnerId = (String) request.getSession().getAttribute("pawnerId");
			System.out.println("pawner => " +pawnerId);
		}
		ModelAndView mv = new ModelAndView("listGold.jsp");
		List<Gold> goldList;
		try {
			goldList = goldService.findGoldByPawnerId(Long.parseLong(pawnerId));
			System.out.println(goldList);
			mv.addObject("goldList", goldList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/listAllGold")
	public ModelAndView listAllGold(HttpServletRequest request) {
//		String pawnshopId = null;
//		// check if pararameter passed
//		if (request.getParameter("id") != null) {
//			// add parameter value to session
//			pawnshopId = request.getParameter("id");
//			request.getSession().setAttribute("pawnshopId", pawnshopId);
//		} else {
//			// get parameter from session
//			pawnshopId = (String) request.getSession().getAttribute("pawnshopId");
//			System.out.println("pawnshopId " +pawnshopId);
//		}
		ModelAndView mv = new ModelAndView("listAllGoldForPawnshop.jsp");
		List<Gold> goldList;
//		Pawnshop shop;
		try {
//			shop = pawnshopServ.findPawnshopById(Long.parseLong(pawnshopId));
			goldList = goldService.getAllGold();
			System.out.println(goldList);
			mv.addObject("goldList", goldList);
//			mv.addObject("shop", shop);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

}
