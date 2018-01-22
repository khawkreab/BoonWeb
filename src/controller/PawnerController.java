package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawner;
import service.PawnerService;

@Controller
public class PawnerController {
	
	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@RequestMapping("/pawner-register-form")
	public ModelAndView newPawner(){
		ModelAndView mv = new ModelAndView("pawnerRegisterForm.jsp");
		Pawner pawner = new Pawner();
		mv.addObject("pawner",pawner);
		return mv;
	}
	
	@RequestMapping("/savePawner")
	public String savePawner(@ModelAttribute("pawner") Pawner pawner, BindingResult result, HttpServletRequest request){
		try {
			if (pawner.getPawnerId() == 0){
				pmService.insert(pawner);
			}else{
				pmService.update(pawner);
				return "redirect:pawnerIndex.do";
			}
		}catch (Exception e){
			return "redirect:pawnerForm.do";
		}return "redirect:login.do";
	}
	
	@RequestMapping("/editPawner")
	public ModelAndView editPawner(HttpServletRequest request) {
		long paramId = (long) request.getSession().getAttribute("id");
		Pawner foundPawner;
		ModelAndView mv = new ModelAndView("pawnerRegisterForm.jsp");
		try {
			foundPawner = pmService.findPawnerById(paramId);
			mv.addObject("pawner", foundPawner);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawner-index.")
	public ModelAndView pawnerIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerIndex.jsp");
		Pawner pawner;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawner = pmService.findPawnerById(userId);
			mv.addObject("pawner", pawner);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}
