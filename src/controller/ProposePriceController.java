package controller;
//import java.util.Date;
//
//import javax.ejb.EJB;
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//
//import entity.Gold;
//import entity.Pawnshop;
//import entity.ProposePrice;
//import service.GoldService;
//import service.PawnshopService;
//import service.ProposePriceService;
//
//@Controller
public class ProposePriceController {

//	@EJB(mappedName = "ejb:/BoonEJB//ProposePriceServiceBean!service.ProposePriceService")
//	ProposePriceService proposePriceServ;
//	
//	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
//	PawnshopService pawnshopServ;
//	
//	@EJB(mappedName = "ejb:/BoonEJB//GoldServiceBean!service.GoldService")
//	GoldService goldServ;
////	
//	@RequestMapping("/newProposrPrice")
//	public ModelAndView newProppposePrice(HttpServletRequest request){
//		ModelAndView mv = new ModelAndView("proposePriceForm.jsp");
//		long pawnshopId = (long) request.getSession().getAttribute("user");
//		long goldId = Long.parseLong(request.getParameter("goldId"));
//		Pawnshop pawnshop = pawnshopServ.findPawnshopById(pawnshopId);
//		Gold gold = goldServ.findGoldById(goldId);
//		
//		ProposePrice proposePrice = new ProposePrice();
//		proposePrice.setPawnshopUserName(pawnshop);
//		proposePrice.setGoldId(gold);
//		mv.addObject("proposePrice" , proposePrice);
//		return mv;
//	}
//	
//
//	@RequestMapping("/saveProposePrice")
//	public String saveGold(@ModelAttribute("proposePrice") ProposePrice proposePrice, BindingResult result,
//			HttpServletRequest request) {
//		 Date date = new Date();
//		 String status = "processing";
//		try {
//			if (proposePrice.getProposepriceId() == 0) {
//				proposePrice.setProposeDate(date);
//				proposePrice.setStatus(status);
//				proposePriceServ.insert(proposePrice);
//			} else {
//				proposePriceServ.update(proposePrice);
//			}
//		} catch (Exception e) {
//		 
//		}
//		return "redirect:pawnShopIndex.do";
//	}
//	
//
//	@RequestMapping("/deleteProposePrice")
//	public String deleteProposePrice(HttpServletRequest request){
//		proposePriceServ.delete(Long.valueOf(request.getParameter("id")));
//		return "redirect:listProposePrice.do";
//	}
//	
}
