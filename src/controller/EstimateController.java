/*!-- 
// page : EstimateController
// version : 3.0
// task : create pawnshop-estimate-approve
// edit by : K'win
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
import entity.Picture;
import service.EstimateService;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;
import service.PictureService;

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

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;

	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;

	@RequestMapping("/pawnshop-estimate-form")
	public ModelAndView newestimate(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopEstimateForm.jsp");
		PawnerPost pawnerPost = new PawnerPost();
		List<Picture> pictures;

		try {
			long userId = (long) request.getSession().getAttribute("id");
			Pawnshop ps = pawnshopServ.findPawnshopById(userId);

			long postId = Long.parseLong(request.getParameter("item"));
			pawnerPost = postService.findPostById(postId);
			pictures = pictureService.findPictureByPawnerPostId(postId);

			estimate.setPawnshopId(ps);

			mv.addObject("pawnerPost", pawnerPost);
			mv.addObject("pictures", pictures);
			mv.addObject("estimate", estimate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/uploadform")
	public ModelAndView uploadform(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("uploadform.jsp");
		return mv;
	}

	@RequestMapping("/saveEstimate")
	public String saveProposePrice(@ModelAttribute("estimate") Estimate estimate, BindingResult result,
			HttpServletRequest request) {

		Date date = new Date();
		long postId = Long.parseLong(request.getParameter("pawnerPostId.pawnerPostId"));

		try {
			postService.updateStatus(postId, "process");

			estimate.setEstimateDate(date);
			estimate.setEstimateStatus("process");
			estimateService.insert(estimate);

		} catch (Exception e) {
		}
		return "redirect:pawnshop-track-estimate.html";
	}

	@RequestMapping("/deleteEstimate")
	public String deleteProposePrice(HttpServletRequest request) {
		estimateService.delete(Long.valueOf(request.getParameter("id")));
		return "redirect:pawnshop-estimate-list.html";
	}

	@RequestMapping("/pawnshop-estimate-history")
	public ModelAndView listProposeByPawnshop(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopEstimateHistory.jsp");
		Pawnshop pawnshop;
		List<Estimate> eList;
		List<PawnerPost> pawnerPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshop = pawnshopServ.findPawnshopById(userId);
			pawnerPosts = pawnerPostService.findPawnerPostByPawnerId(userId);
			eList = estimateService.findEstimateByPawnshopId(userId);

			mv.addObject("pawnshop", pawnshop);
			mv.addObject("pawnerPosts", pawnerPosts);
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
		List<Estimate> estimatesList;
		try {
			/* long userId = (long) request.getSession().getAttribute("id"); */
			long pawnerPostId = Long.parseLong(request.getParameter("pawnerPostId"));

			estimatesList = estimateService.listEstimateByPawnerPost(pawnerPostId);

			mv.addObject("estimatesList", estimatesList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/pawner-approve")
	public String pawnerApprove(HttpServletRequest request) {
		Estimate estimate;
		long estimateId = Long.parseLong(request.getParameter("estimateId"));
		long pawnerPostId = Long.parseLong(request.getParameter("pawnerPostId"));
		long pawnerId = (long) request.getSession().getAttribute("id");
		Date date = new Date();

		try {

			estimateService.updateStatus(pawnerPostId, "denei");
			postService.updateStatus(pawnerPostId, "approve");

			estimate = estimateService.findEstimateById(estimateId);
			estimate.setEstimateAccessDate(date);
			estimate.setEstimateStatus("approve");
			estimateService.update(estimate);
			/* set notification */
			String notifiPawnerFollowPlege = Integer
					.toString(pawnerPostService.findPawnerPostByPawnerIdAndStatus(pawnerId, "process").size());
			request.getSession().setAttribute("notifiPawnerFollowPlege", notifiPawnerFollowPlege);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:pawner-track-pledge.html#item"+pawnerPostId;
	}

	@RequestMapping("/pawnshop-estimate-approve")
	public String pawnshopApprove(HttpServletRequest request) {
		Estimate estimate;
		long estimateId = Long.parseLong(request.getParameter("estimateId"));
		long pawnerPostId = Long.parseLong(request.getParameter("pawnerPostId"));
		long pawnshopId = (long) request.getSession().getAttribute("id");
		String status = request.getParameter("status");
		try {

			if (status.equals("complete")) {
				pawnerPostService.updateStatus(pawnerPostId, status);
			}

			estimate = estimateService.findEstimateById(estimateId);
			estimate.setEstimateStatus(status);
			estimateService.update(estimate);
			/* set notification */
			String notifiPawnshopFollowEstimate = Integer
					.toString(estimateService.findEstimateByPawnshopIdAndStatus(pawnshopId, "approve").size()
							+ estimateService.findEstimateByPawnshopIdAndStatus(pawnshopId, "denai").size());
			request.getSession().setAttribute("notifiPawnshopFollowEstimate", notifiPawnshopFollowEstimate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:pawnshop-estimate-history.html?";
	}

	@RequestMapping("/pawnshop-track-estimate")
	public ModelAndView trackMyEstimate(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopTrackEstimate.jsp");
		Pawnshop pawnshop;
		Pawner pawner;
		List<Estimate> trackMyEstimate;
		List<PawnerPost> pawnerPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshop = pawnshopServ.findPawnshopById(userId);
			pawner = pmService.findPawnerById(userId);
			pawnerPosts = pawnerPostService.findPawnerPostByPawnerId(userId);
			trackMyEstimate = estimateService.findEstimateByPawnshopId(userId);

			mv.addObject("pawnshop", pawnshop);
			mv.addObject("pawner", pawner);
			mv.addObject("pawnerPosts", pawnerPosts);
			mv.addObject("trackMyEstimate", trackMyEstimate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}