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
			if (0 == gold.getGoldId()) { 
				goldService.insert(gold);
			} else {
				goldService.update(gold);
			}
		} catch (Exception e) {
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
	
	@RequestMapping("/listPawnerGold")
	public ModelAndView listGold(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("listPawnerGold.jsp");
		Pawner pawner;
		List<Gold> goldList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawner = pmService.findPawnerById(userId);
			goldList = goldService.findGoldByPawnerId(userId);
	
			mv.addObject("pawner", pawner);
			mv.addObject("goldList", goldList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/listAllGold")
	public ModelAndView listAllGold(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("listAllGoldForPawnshop.jsp");
		List<Gold> goldList;
		try {
			goldList = goldService.getAllGold();
			System.out.println(goldList);
			mv.addObject("goldList", goldList);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

}
