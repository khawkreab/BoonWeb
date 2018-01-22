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

import entity.Estimate;
import entity.Pawner;
import entity.Pawnshop;
import service.EstimateService;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class EstimateController {

	@EJB(mappedName = "ejb:/BoonWeb//EstimateServiceServiceBean!service.EstimateService")
	EstimateService estimateService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService postService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

	@RequestMapping("/saveProposePrice")
	public String saveProposePrice(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();

		try {
			if (estimate.getEstimateId() == 0) {
				estimate.setEstimateDate(date);
				estimateService.insert(estimate);
			} else {
				estimate.setEstimateDate(date);
				estimateService.update(estimate);
			}
		} catch (Exception e) {
		}
		return "redirect:pawnshopIndex.do";
	}

	@RequestMapping("/approveProposePrice")
	public String approveProposePrice(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();

		try {
			if (estimate.getEstimateId() == 0) {
				estimate.setEstimateDate(date);
				estimateService.insert(estimate);

			} else {
				estimate.setEstimateDate(date);
				estimateService.update(estimate);
			}
		} catch (Exception e) {
		}
		return "redirect:listPawnerGold.do";
	}

	@RequestMapping("/editProposePrice")
	public ModelAndView editProposePrice(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		Estimate foundEstimates;
		ModelAndView mv = new ModelAndView("proposePriceForm.jsp");
		try {
			foundEstimates = estimateService.findEstimateById(paramId);
			mv.addObject("estimates", foundEstimates);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteProposePrice")
	public String deleteProposePrice(HttpServletRequest request) {
		estimateService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listProposePrice.do";
	}

	@RequestMapping("/pawnshop-estimate-list")
	public ModelAndView listProposeByPawnshop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("listProposeByPawnshop.jsp");
		Pawnshop pawnshop;
		List<Estimate> eList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshop = pawnshopServ.findPawnshopById(userId);
			eList = estimateService.findEstimateByPawnshopId(userId);

			mv.addObject("pawnshop", pawnshop);
			mv.addObject("eList", eList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawner-estimate-list")
	public ModelAndView listProposeBygold(@ModelAttribute("proposePrice") Estimate estimate,
			BindingResult result, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("listProposeByGold.jsp");
		Pawner pawner;
		List<Estimate> estimatesList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			long pawnerPostId = Long.parseLong(request.getParameter("pawnerPostId"));

			pawner = pmService.findPawnerById(userId);
			estimatesList = estimateService.listEstimateByPawnerPost(pawnerPostId);

			mv.addObject("pawner", pawner);
			mv.addObject("estimatesList", estimatesList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}