package controller;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Estimate;
import entity.OrderItem;
import entity.PawnerPost;
import service.EstimateService;
import service.OrderItemService;
import service.PawnerPostService;

import entity.Pawner;
import entity.Pawnshop;
import entity.PawnshopPost;
import service.PawnerService;
import service.PawnshopPostService;
import service.PawnshopService;

@Controller
public class AdminContorller {
	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopPostServiceBean!service.PawnshopPostService")
	PawnshopPostService pawnshopPostService;
	
	@EJB(mappedName = "ejb:/BoonWeb//EstimateServiceBean!service.EstimateService")
	EstimateService estimateService;
	
	@EJB(mappedName = "ejb:/BoonWeb//OrderItemServiceBean!service.OrderItemService")
	OrderItemService orderItemService;
	


	@RequestMapping("/admin-dashboard")
	public ModelAndView adminDashboard(HttpServletRequest request, HttpServletResponse response) throws IOException  {
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
		if(request.getSession().getAttribute("userType")== null){
			response.sendRedirect("index.jsp");
		};
		return mv;
	}

	// Control About Pawnshop
	@RequestMapping("/admin-list-pawnshop")
	public ModelAndView adminListPawnshop(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		ModelAndView mv = new ModelAndView("adminListPawnshop.jsp");
		List<Pawnshop> pawnshopList;
		try {
			pawnshopList = pawnshopServ.getAllPawnshop();
			mv.addObject("pawnshopList", pawnshopList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(request.getSession().getAttribute("userType")== null){
			response.sendRedirect("index.jsp");
		};
		return mv;
	}

	@RequestMapping("/deletePawnshop")
	public String deletePawnshop(HttpServletRequest request) {
		pawnshopServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:pawnshopList.html";
	}

	// Control About Pawner
	@RequestMapping("/admin-list-pawner")
	public ModelAndView adminListPawner(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		ModelAndView mv = new ModelAndView("adminListPawner.jsp");
		List<Pawner> pawnerList;
		try {
			pawnerList = pmService.getAllPawner();
			mv.addObject("pawnerList", pawnerList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(request.getSession().getAttribute("userType")== null){
			response.sendRedirect("index.jsp");
		};
		return mv;
	}

	@RequestMapping("/deletePawner")
	public String deletePawner(HttpServletRequest request) { 
		pmService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:admin_listpawner.html";

	}

	@RequestMapping("/admin-index")
	public ModelAndView adminIndex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView("adminIndex.jsp");
		if(request.getSession().getAttribute("userType")== null){
			response.sendRedirect("index.jsp");
		};
		return mv;

	}
	
	// Admin List Estimate
		@RequestMapping("/admin-list-estimate")
		public ModelAndView listProposeByPawnshop(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
			if(request.getSession().getAttribute("userType")== null){
				response.sendRedirect("index.jsp");
			};
			return mv;
		}
		// Admin List Order
		@RequestMapping("/admin-list-order")
		public ModelAndView listOrderByPawner(HttpServletRequest request , HttpServletResponse response) throws IOException  {
			ModelAndView mv = new ModelAndView("adminListOrder.jsp");
			List<Pawner> pawner;
			List<OrderItem> adminOList;
			List<PawnshopPost> pawnshopPosts;
			try {
				
				pawner = pmService.getAllPawner();
				pawnshopPosts = pawnshopPostService.getAllPawnshopPost();
				adminOList = orderItemService.getAllorderItem();

				mv.addObject("pawner", pawner);
				mv.addObject("pawnshopPosts", pawnshopPosts);
				mv.addObject("adminOList", adminOList);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(request.getSession().getAttribute("userType")== null){
				response.sendRedirect("index.jsp");
			};
			return mv;
		}
}
