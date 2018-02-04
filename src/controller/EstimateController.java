/*!-- 
// page : EstimateController
// version : 1.1
// task : connect database in pawnshop-estimate-form
// edit by : khawkreab
 --*/

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

import entity.Estimate;
import entity.Pawner;
import entity.PawnerPost;
import entity.Pawnshop;
import service.EstimateService;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class EstimateController {

	@EJB(mappedName = "ejb:/BoonWeb//EstimateServiceBean!service.EstimateService")
	EstimateService estimateService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService postService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

	@RequestMapping("/pawnshop-estimate-form")
	public ModelAndView newestimate(@ModelAttribute("postid") Estimate postid, BindingResult result,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopEstimateForm.jsp");
		Estimate estimate = new Estimate();
		PawnerPost pawnerPost = new PawnerPost();

		try {
			long userId = (long) request.getSession().getAttribute("id");
			Pawnshop ps = pawnshopServ.findPawnshopById(userId);
			
			long postId = Long.parseLong(request.getParameter("postId"));
			pawnerPost = postService.findPostById(postId);
			
			estimate.setPawnshopId(ps);
			
			mv.addObject("pawnerPost", pawnerPost);
			mv.addObject("estimate", estimate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/saveEstimate")
	public String saveProposePrice(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();

		try {

			estimate.setEstimateDate(date);
			estimate.setEstimateStatus("proceed");
			estimateService.insert(estimate);

		} catch (Exception e) {
		}
		return "redirect:pawnshop-index.html";
	}

	@RequestMapping("/approveEsimate")
	public String approveProposePrice(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();

		try {
			if (estimate.getEstimateId() == 0) {
				estimate.setEstimateDate(date);
				estimateService.insert(estimate);

			} else {
				estimate.setEstimateDate(date);
				estimateService.update(estimate);
			}
		} catch (Exception e) {
		}
		return "redirect:listPawnerGold.do";
	}

	@RequestMapping("/deleteEstimate")
	public String deleteProposePrice(HttpServletRequest request) {
		estimateService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:pawnshop-estimate-list.html";
	}

	@RequestMapping("/pawnshop-estimate-list")
	public ModelAndView listProposeByPawnshop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopEstimateList.jsp");
		Pawnshop pawnshop;
		List<Estimate> eList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshop = pawnshopServ.findPawnshopById(userId);
			eList = estimateService.findEstimateByPawnshopId(userId);

			mv.addObject("pawnshop", pawnshop);
			mv.addObject("eList", eList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/pawner-estimate-list")
	public ModelAndView listProposeBygold(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostList.jsp");
		Pawner pawner;
		List<Estimate> estimatesList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			long pawnerPostId = Long.parseLong(request.getParameter("pawnerPostId"));

			pawner = pmService.findPawnerById(userId);
			estimatesList = estimateService.listEstimateByPawnerPost(pawnerPostId);

			mv.addObject("pawner", pawner);
			mv.addObject("estimatesList", estimatesList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}