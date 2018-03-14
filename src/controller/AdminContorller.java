package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Estimate;
import entity.PawnerPost;
import service.EstimateService;
import service.PawnerPostService;

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

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;
	
	@EJB(mappedName = "ejb:/BoonWeb//EstimateServiceBean!service.EstimateService")
	EstimateService estimateService;
	
	
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
		return "redirect:admin-list-pawnshop.html";
	}

	// Control About Pawner
	@RequestMapping("/admin-listpawner")
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
	
	// Admin List Estimate
	@RequestMapping("/admin-list-estimate")
	public ModelAndView listProposeByPawnshop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("adminListEstimate.jsp");
		List<Pawnshop> pawnshop;
		List<Estimate> adminEList;
		List<PawnerPost> pawnerPosts;
		try {
			
			pawnshop = pawnshopServ.getAllPawnshop();
			pawnerPosts = pawnerPostService.getAllPawnerPost();
			adminEList = estimateService.getAllEstimate();

			mv.addObject("pawnshop", pawnshop);
			mv.addObject("pawnerPosts", pawnerPosts);
			mv.addObject("adminEList", adminEList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	// Admin List Order
	
}
