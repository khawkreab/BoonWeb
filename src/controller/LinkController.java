package controller;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.Pawner;
import entity.PawnerPost;
import service.PawnerService;

@Controller
public class LinkController {
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
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

	@RequestMapping("/pawner-post-form-receipt")
	public ModelAndView receipt(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormReceipt.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
}
