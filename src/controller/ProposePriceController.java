package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.ProposePrice;
import service.PawnshopService;
import service.ProposePriceService;

@Controller
public class ProposePriceController {
	
	@EJB(mappedName = "ejb:/BoonEJB//ProposePriceServiceBean!service.ProposePriceService")
	ProposePriceService proposePriceServ;
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	@RequestMapping("/proposePriceForm")
	public ModelAndView  newProposePrice(){
		ModelAndView mv = new ModelAndView("pawnshopForm.jsp");
		ProposePrice proposePrice = new ProposePrice();
		mv.addObject("proposePrice" ,proposePrice);
		return mv;
	}
	
	@RequestMapping("/listProposePrice")
	public ModelAndView listProposePrice(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("listProposePrice.jsp");
		List<ProposePrice> proposePriceList;
		try{
			proposePriceList = proposePriceServ.getAllProposePrice();
			mv.addObject("proposePriceList" ,proposePriceList);
		}catch (Exception e){
			e.printStackTrace();
		}return mv;
	}
	
	@RequestMapping("/saveProposePrice")
	public String saveProposePrice(@ModelAttribute("proposePrice") ProposePrice proposePrice, BindingResult result,HttpServletRequest request){
		try{
			if (proposePrice.getProposePriceId() == 0){
				proposePriceServ.insert(proposePrice);
			}else{
				proposePriceServ.update(proposePrice);
			}
		}catch (Exception e){
		}return "redirect:listProposePrice.do";
	}
	
	@RequestMapping("/editProposePrice")
	public ModelAndView editProposePrice(HttpServletRequest request){
		int paramId = Integer.parseInt(request.getParameter("id"));
		ProposePrice foundProposePrice;
		ModelAndView mv = new ModelAndView("proposePriceForm.jsp");
		try{
			foundProposePrice = proposePriceServ.findProposePriceById(paramId);
			mv.addObject("proposePrice" ,foundProposePrice);
		}catch (Exception e){
			e.printStackTrace();
		}return mv;
	}
	
	@RequestMapping("/deleteProposePrice")
	public String deleteProposePrice(HttpServletRequest request){
		proposePriceServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listProposePrice.do";
	}
}