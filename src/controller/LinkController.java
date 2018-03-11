package controller;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawner;
import entity.PawnerPost;
import entity.Pawnshop;
import entity.PawnshopPost;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class LinkController {
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	

	@RequestMapping("/pawner-post-form-tv")
	public ModelAndView tv(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormTv.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	
	@RequestMapping("/pawnshop-post-form-tv")
	public ModelAndView selltv(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPostFormTv.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}

	@RequestMapping("/pawner-pledge")
	public ModelAndView pledge(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPledge.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	
	@RequestMapping("/pawnshop-pledge-sell")
	public ModelAndView pledgesell(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPledgeSell.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}
	

	@RequestMapping("/pawner-post-form-laptop")
	public ModelAndView laptop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormLaptop.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	
	@RequestMapping("/pawnshop-post-form-laptop")
	public ModelAndView selllaptop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPostFormLaptop.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}
	
	@RequestMapping("/pawner-post-form-smartphone")
	public ModelAndView smartphone(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormSmartphone.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	
	@RequestMapping("/pawnshop-post-form-smartphone")
	public ModelAndView sellsmartphone(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPostFormSmartphone.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}
	
	@RequestMapping("/pawner-post-form-camera")
	public ModelAndView camera(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormCamera.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	@RequestMapping("/pawnshop-post-form-camera")
	public ModelAndView sellcamera(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPostFormCamera.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}
	
	@RequestMapping("/pawnshop-post-form-gold")
	public ModelAndView sellgold(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPostFormGold.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}
	
	@RequestMapping("/pawnshop-post-form-watch")
	public ModelAndView sellwatch(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopPostFormWatch.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);
		PawnshopPost pawnshopPost = new PawnshopPost();
		pawnshopPost.setPawnshop(pm);
		mv.addObject("pawnshopPost", pawnshopPost);
		return mv;
	}
	
}
