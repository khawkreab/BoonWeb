package controller;

import java.util.Date;
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
import service.GoldService;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class GoldController {
	
	@EJB(mappedName = "ejb:/BoonWeb//GoldServiceBean!service.GoldService")
	GoldService goldService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	@RequestMapping("/pawnerPostForm")
	public ModelAndView newGold(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostForm.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		Gold gold = new Gold();
		gold.setPawner(pm);
		mv.addObject("pawner", pm);
		mv.addObject("gold", gold);
		return mv;
	}
	
	@RequestMapping("/savePost")
	public String saveGold(@ModelAttribute("gold") Gold gold, BindingResult result,
			HttpServletRequest request) {
		Date date = new Date();
		try {
			System.out.println(gold.getClass());
			if (0 == gold.getGoldId()) { 
				gold.setDate(date);
				goldService.insert(gold);
			} else {
				goldService.update(gold);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:listPawnerGold.do?pawnerId="+request.getSession().getAttribute("id");
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
		ModelAndView mv = new ModelAndView("pawnerPostList.jsp");
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
	
	

}
