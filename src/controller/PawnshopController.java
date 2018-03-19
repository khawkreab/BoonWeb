/*!-- 
// page : PawnshopController
// version : 1.0
// task : connect database in pawnshop-index
// edit by : khawkreab
 --*/
package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.PawnerPost;
import entity.Pawnshop;
import service.PawnerPostService;
import service.PawnshopService;

@Controller
public class PawnshopController {

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;

	@RequestMapping("/pawnshop-register-form")
	public ModelAndView newPawner() {
		ModelAndView mv = new ModelAndView("pawnshopRegisterForm.jsp");
		Pawnshop pawnshop = new Pawnshop();
		mv.addObject("pawnshop", pawnshop);
		return mv;
	}

	@RequestMapping("/savePawnshop")
	public String savePawnshop(@ModelAttribute("pawnshop") Pawnshop pawnshop, BindingResult result,
			HttpServletRequest request) {
		try {
			if (pawnshop.getPawnshopId() == 0) {
				pawnshopServ.insert(pawnshop);
			} else {
				pawnshopServ.update(pawnshop);
			}
		} catch (Exception e) {
			return "redirect:pawnshop-register-form.html";
		}
		return "redirect:index.jsp";
	}

	// ********* ยังไม่มีหน้า ***********//
	@RequestMapping("/editPawnshop")
	public ModelAndView editPawnshop(HttpServletRequest request) {
		long paramId = (long) request.getSession().getAttribute("id");
		Pawnshop foundPawnshop;
		ModelAndView mv = new ModelAndView("pawnshopProfile.jsp");
		try {
			foundPawnshop = pawnshopServ.findPawnshopById(paramId);
			mv.addObject("pawnshop", foundPawnshop);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/pawnshop-index")
	public ModelAndView pawnshopIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopIndex.jsp");


		List<PawnerPost> pawnerPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnerPosts = pawnerPostService.findPawnerPostByPawnshopId(userId);
			mv.addObject("pawnerPosts", pawnerPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
