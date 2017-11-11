package controller;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawnshop;
import service.PawnshopService; 

@Controller
public class PawnshopController {
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	@RequestMapping("/newPawnshop")
	public ModelAndView newPawnshop(){
		ModelAndView mv = new ModelAndView("pawnshopForm.jsp");
		Pawnshop pawnshop = new Pawnshop();
		mv.addObject("pawnshop",pawnshop);
		return mv;
	}
	
	@RequestMapping("/savaPawnshop")
	public String savePawnshop(@ModelAttribute("pawnshop") Pawnshop pawnshop, BindingResult result, HttpServletRequest request){
		try {
			if (pawnshop.getPawnshopId() == 0){
				pawnshopServ.insert(pawnshop);
			}else{
				pawnshopServ.update(pawnshop);
			}
		}catch (Exception e){
		}return "redirect:index.do";
	}
	
	@RequestMapping("/deletePawnshop")
	public String deletePawnshop(HttpServletRequest request){
		pawnshopServ.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:listPawnshop.do";
	}
	
	
}
