package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawner;
import entity.Pawnshop;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;



@Controller
public class LoginCotroller {
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;
	
	@RequestMapping("/login")
	public ModelAndView signIn() {
		ModelAndView mv = new ModelAndView("navbar.jsp");
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
			pawner = pmService.findPawnerByEmailAndPassword(email, password);
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
			pawnshop = pawnshopServ.findPawnShopByEmailAndPassword(email, password);
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
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "admin");
				return "redirect:board.do";
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getSession().setAttribute("error", "yes");
		return "redirect:login.do?";
	}
	
	
	
	@SuppressWarnings("deprecation")
	@RequestMapping("/signOut")
	public String signOut(HttpServletRequest request) {
		try {
			request.getSession().putValue("isLogin", "no");
			request.getSession().removeAttribute("id");
			request.getSession().removeAttribute("userType");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:index.jsp";
	}
}
