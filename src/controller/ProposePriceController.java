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
import entity.Pawnshop;
import entity.ProposePrice;
import service.GoldService;
import service.PawnerService;
import service.PawnshopService;
import service.ProposePriceService;

@Controller
public class ProposePriceController {

	@EJB(mappedName = "ejb:/BoonEJB//ProposePriceServiceBean!service.ProposePriceService")
	ProposePriceService proposePriceServ;

	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonEJB//GoldServiceBean!service.GoldService")
	GoldService goldService;

	@EJB(mappedName = "ejb:/BoonEJB//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

//	@RequestMapping("/proposePriceForm")
//	public ModelAndView newProposePrice(HttpServletRequest request) {
//		ModelAndView mv = new ModelAndView("proposePriceForm.jsp");
//		long pawnshopId = (long) request.getSession().getAttribute("id");
//		long goldId = Long.parseLong(request.getParameter("goldId"));
//
//		Pawnshop pawnshop = pawnshopServ.findPawnshopById(pawnshopId);
//		Gold gold = goldService.findGoldById(goldId);
//
//		ProposePrice proposePrice = new ProposePrice();
//		proposePrice.setGoldId(gold);
//		proposePrice.setPawnshopId(pawnshop);
//
//		mv.addObject("proposePrice", proposePrice);
//		mv.addObject("pawnshop", pawnshop);
//		return mv;
//	}

	@RequestMapping("/saveProposePrice")
	public String saveProposePrice(@ModelAttribute("proposePrice") ProposePrice proposePrice, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();

		try {
			if (proposePrice.getProposePriceId() == 0) {
				proposePrice.setProposeDate(date);
				proposePriceServ.insert(proposePrice);

			} else {
				proposePrice.setProposeDate(date);
				proposePriceServ.update(proposePrice);
			}
		} catch (Exception e) {
		}
		return "redirect:pawnshopIndex.do";
	}
	
	@RequestMapping("/approveProposePrice")
	public String approveProposePrice(@ModelAttribute("proposePrice") ProposePrice proposePrice, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();

		try {
			if (proposePrice.getProposePriceId() == 0) {
				proposePrice.setProposeDate(date);
				proposePriceServ.insert(proposePrice);

			} else {
				proposePrice.setProposeDate(date);
				proposePriceServ.update(proposePrice);
			}
		} catch (Exception e) {
		}
		return "redirect:listPawnerGold.do";
	}

	@RequestMapping("/listProposePrice")
	public ModelAndView listProposePrice(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("listProposePrice.jsp");
		List<ProposePrice> proposePriceList;
		try {
			proposePriceList = proposePriceServ.getAllProposePrice();
			mv.addObject("proposePriceList", proposePriceList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/listProposeBygold")
	public ModelAndView listProposeBygold(@ModelAttribute("proposePrice") ProposePrice proposePrice, BindingResult result, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("listProposeByGold.jsp");
		Pawner pawner;
		List<ProposePrice> ppList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			long goldId = Long.parseLong(request.getParameter("goldId"));

			pawner = pmService.findPawnerById(userId);
			ppList = proposePriceServ.listProposeBygold(goldId);

			mv.addObject("pawner", pawner);
			mv.addObject("ppList", ppList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/editProposePrice")
	public ModelAndView editProposePrice(HttpServletRequest request) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		ProposePrice foundProposePrice;
		ModelAndView mv = new ModelAndView("proposePriceForm.jsp");
		try {
			foundProposePrice = proposePriceServ.findProposePriceById(paramId);
			mv.addObject("proposePrice", foundProposePrice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/deleteProposePrice")
	public String deleteProposePrice(HttpServletRequest request) {
		proposePriceServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listProposePrice.do";
	}
}