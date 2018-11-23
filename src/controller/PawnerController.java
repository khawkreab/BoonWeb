package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.OrderItem;
import entity.Pawner;
import entity.PawnshopPost;
import service.OrderItemService;
import service.PawnerService;
import service.PawnshopPostService;
import service.PictureService;

@Controller
public class PawnerController {
	
	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonWeb/OrderItemServiceBean!service.OrderItemService")
	OrderItemService orService;
	
	@EJB(mappedName = "ejb:/BoonWeb/PawnshopPostServiceBean!service.PawnshopPostService")
	PawnshopPostService psService;
	
	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;
	
	@RequestMapping("/pawner-register-form")
	public ModelAndView newGold(){
		ModelAndView mv = new ModelAndView("pawnerRegisterForm.jsp");
		Pawner pawner = new Pawner();
		mv.addObject("pawner",pawner);
		return mv;
	}
	
	@RequestMapping("/savePawner")
	public String savePawner(@ModelAttribute("pawner") Pawner pawner, BindingResult result, HttpServletRequest request){
		try {
			if (pmService.findPawnerEmai(pawner.getPawnerEmail()) != null){
				return "redirect:pawner-register-form.html";
			}else if (pawner.getPawnerId() == 0){
				pawner.setPawnerState("pawner");
				pmService.insert(pawner);
			}else{
				pawner.setPawnerState("pawner");
				pmService.update(pawner);
				return "redirect:pawner-index.html";
			}
		}catch (Exception e){
			return "redirect:pawner-register-form.html";
		}return "redirect:index.jsp";
	}
	
	@RequestMapping("/pawner-edit")
	public ModelAndView editPawner(HttpServletRequest request) {
		long paramId = (long) request.getSession().getAttribute("id");
		Pawner foundPawner;
		ModelAndView mv = new ModelAndView("pawnerEdit.jsp");
		try {
			foundPawner = pmService.findPawnerById(paramId);
			mv.addObject("pawner", foundPawner);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawner-index")
	public ModelAndView pawnerIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerIndex.jsp");
		List<PawnshopPost> pawnshopPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshopPosts = psService.listPawnshopPostByPawnerId(userId);
			
			mv.addObject("pawnshopPosts", pawnshopPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawner-off-pledge")
	public ModelAndView pawnerpledge(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerOffPledge.jsp");
		List<PawnshopPost> pawnshopPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshopPosts = psService.listPawnshopPostByPawnerId(userId);
			
			mv.addObject("pawnshopPosts", pawnshopPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}
