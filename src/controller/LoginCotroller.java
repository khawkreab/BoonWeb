package controller;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawner;
import entity.Pawnshop;
import service.PawnerService;
import service.PawnshopService;



@Controller
public class LoginCotroller {
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonEJB//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	
	@RequestMapping("/login")
	public ModelAndView signIn() {
		ModelAndView mv = new ModelAndView("login.jsp");
		Pawner pawner = new Pawner();
		mv.addObject("pawner", pawner);
		return mv;
	}
	
	@RequestMapping("/loginProcess")
	public String login(HttpServletRequest request) {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Pawner pawner;
		Pawnshop pawnshop;
		
		String adminName = "admin";
		String adminPassword = "admin";
		try {
			pawner = pmService.findPawnerUserName(email, password);
			if (pawner.equals(null)) {
				return "redirect:signIn.do?";
			} else {
				request.getSession().setAttribute("email", pawner.getPawnerId());
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "pawner");
				return "redirect:index.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			pawnshop = pawnshopServ.findPawnShopUserName(email, password);
			if (pawnshop.equals(null)) {
				return "redirect:signIn.do?";
			} else {
				request.getSession().setAttribute("email", pawnshop.getPawnshopId());
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "pawnShop");
				return "redirect:pawnShopIndex.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		try {
			if (adminName.equals(email)&&adminPassword.equals(password)) {
				return "redirect:listPawner.do?";
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}


		return "redirect:signIn.do?";
	}
	
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("index.jsp");
		Pawner pawner;
		try {
			long userId = (long) request.getSession().getAttribute("user");
			pawner = pmService.findPawnerById(userId);
			mv.addObject("pawner", pawner);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}
