package controller;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.PawnshopPost;
import service.PawnshopPostService;

@Controller
public class PawnshopPostController {
	

	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopPostServiceBean!service.PawnshopPostService")
	PawnshopPostService pawnshopPostService;
	
	@RequestMapping("/saveShopPost")
	public String savePost(@ModelAttribute("pawnshopPost") PawnshopPost pawnshopPost, BindingResult result,
			HttpServletRequest request) {
		
		Date date = new Date();
		String status = "waiting";
		
		try {
			System.out.println(pawnshopPost.getClass());
			if (pawnshopPost.getPawnshopPostId() == 0) { 
				pawnshopPost.setPawnshopPostDate(date);
				pawnshopPost.setPawnshopPostStatus(status);
				pawnshopPostService.insert(pawnshopPost);
			} else {
				pawnshopPostService.update(pawnshopPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:pawnshop-list-post.html";
	}
	
	@RequestMapping("/pawnshop-list-post")
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopListPost.jsp");
		List<PawnshopPost> pawnshopPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshopPosts = pawnshopPostService.findPawnshopPostByPawnshopId(userId);
			
			mv.addObject("pawnshopPosts", pawnshopPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/post-detail")
	public ModelAndView detail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("postDetail.jsp");
		PawnshopPost pawnshopPost;
		
		try {
			long userId = (long) request.getSession().getAttribute("id");
			
			long postId = Long.parseLong(request.getParameter("item"));
			pawnshopPost = pawnshopPostService.findPawnshopPostById(postId);
			
			mv.addObject("pawnshopPost", pawnshopPost);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
}
