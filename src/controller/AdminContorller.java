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
public class AdminContorller {
	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@RequestMapping("/admin-dashboard")
	public ModelAndView adminDashboard(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("adminDashboard.jsp");
		List<Pawner> pawnerList;
		List<Pawnshop> pawnshopList;
		try {
			pawnshopList = pawnshopServ.getAllPawnshop();
			pawnerList = pmService.getAllPawner();
			// mv.addObject("pawnerList", pawnerList);
			mv.addObject("pawnshop", pawnshopList.size());
			mv.addObject("pawner", pawnerList.size());
			// System.out.println(o.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

	// Control About Pawnshop
	@RequestMapping("/admin-list-pawnshop")
	public ModelAndView adminListPawnshop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("adminListPawnshop.jsp");
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

	@RequestMapping("/deletePawnshop")
	public String deletePawnshop(HttpServletRequest request) {
		pawnshopServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:pawnshopList.html";
	}

	// Control About Pawner
	@RequestMapping("/admin-list-pawner")
	public ModelAndView adminListPawner(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("adminListPawner.jsp");
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

	@RequestMapping("/deletePawner")
	public String deletePawner(HttpServletRequest request) {
		pmService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:admin_listpawner.html";

	}

	@RequestMapping("/admin-index")
	public ModelAndView adminIndex() {
		ModelAndView mv = new ModelAndView("adminIndex.jsp");
		return mv;

	}
}
