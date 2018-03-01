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
		return "redirect:pawnshop-pledge-sell.html";
	}
	
//	@RequestMapping("/pawnshop-track-sellpledge")
//	public ModelAndView sellpledge(HttpServletRequest request) {
//		ModelAndView mv = new ModelAndView("pawnshopTrackMySellPlege.jsp");
//		List<PawnshopPost> pawnshopPosts;
//		
//		try {
//			long userId = (long) request.getSession().getAttribute("id");
//			pawnshopPosts = pawnshopPostService.getAllPawnshopPost()(userId);
//			
//			mv.addObject("pawnshopPosts", pawnshopPosts);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return mv;
//	}
	
}
