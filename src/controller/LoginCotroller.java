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
				return "redirect:login.do?";
			} else {
				request.getSession().setAttribute("id", pawner.getPawnerId());
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "pawner");
				return "redirect:pawnerIndex.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			pawnshop = pawnshopServ.findPawnShopUserName(email, password);
			if (pawnshop.equals(null)) {
				return "redirect:signIn.do?";
			} else {
				request.getSession().setAttribute("id", pawnshop.getPawnshopId());
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "pawnShop");
				return "redirect:pawnshopIndex.do";
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


		return "redirect:login.do?";
	}
	
	@RequestMapping("/pawnerIndex")
	public ModelAndView pawnerIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerIndex.jsp");
		Pawner pawner;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawner = pmService.findPawnerById(userId);
			request.getSession().setAttribute("idp", userId);
			mv.addObject("pawner", pawner);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawnshopIndex")
	public ModelAndView pawnshopIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopIndex.jsp");
		Pawnshop pawnshop;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshop = pawnshopServ.findPawnshopById(userId);
			mv.addObject("pawnshop", pawnshop);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@SuppressWarnings("deprecation")
	@RequestMapping("/signOut")
	public String signOut(HttpServletRequest request) {
		try {
			request.getSession().putValue("isLogin", "no");
			request.getSession().removeAttribute("user");
			request.getSession().removeAttribute("userType");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:index.jsp";
	}
}
