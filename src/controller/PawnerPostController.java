/*!-- 
// page : PawnerPostController
// version : 2.0
// task : connect datat
// edit by : khawkreab
 --*/

package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import entity.Estimate;
import entity.Pawner;
import entity.PawnerPost;
import entity.PawnerPostPicture;
import fileupload.FileUpload;
import service.EstimateService;
import service.PawnerPostPictureService;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;

@Controller
public class PawnerPostController {
	
	@EJB(mappedName = "ejb:/BoonWeb/EstimateServiceBean!service.EstimateService")
	EstimateService estimateService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;
	
	@EJB(mappedName = "ejb:/BoonWeb/PawnerPostPictureServiceBean!service.PawnerPostPictureService")
	PawnerPostPictureService pawnerPostPictureService;
	
	@RequestMapping("/pawner-post-form-gold")
	public ModelAndView newGold(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormGold.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	
	@RequestMapping("/pawner-post-form-watch")
	public ModelAndView watch(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostFormWatch.jsp");
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		PawnerPost pawnerPost = new PawnerPost();
		pawnerPost.setPawner(pm);
		mv.addObject("pawnerPost", pawnerPost);
		return mv;
	}
	
	@RequestMapping("/savePost")
	public String savePost(@ModelAttribute("pawnerPost") FileUpload fileUpload, BindingResult result,
			HttpServletRequest request)throws IllegalStateException, IOException {
		PawnerPost pawnerPost = new PawnerPost();
		PawnerPost post = new PawnerPost();
		Date date = new Date();
		String status = "waiting";
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pm = pmService.findPawnerById(userId);
		try {
			System.out.println(pawnerPost.getClass());
			if (0 == pawnerPost.getPawnerPostId()) { 
				pawnerPost.setPawnerPostDate(date);
				pawnerPost.setPawnerPostStatus(status);
				pawnerPost.setPawner(pm);
				pawnerPost.setPawnerPostName(request.getParameter("pawnerPostName"));
				pawnerPost.setPawnerPostBracelet(request.getParameter("PawnerPostBracelet"));
				pawnerPost.setPawnerPostBattery(request.getParameter("PawnerPostBattery"));
				pawnerPost.setPawnerPostBrand(request.getParameter("pawnerPostBrand"));
				pawnerPost.setPawnerPostCameraLen(request.getParameter("pawnerPostCameraLen"));
				pawnerPost.setPawnerPostCapacity(request.getParameter("pawnerPostCapacity"));
				pawnerPost.setPawnerPostCase(request.getParameter("pawnerPostCase"));
				pawnerPost.setPawnerPostCategory(request.getParameter("pawnerPostCategory"));
				pawnerPost.setPawnerPostDescription(request.getParameter("pawnerPostDescription"));
				pawnerPost.setPawnerPostDevice(request.getParameter("pawnerPostDevice"));
				pawnerPost.setPawnerPostDiamond(request.getParameter("pawnerPostDiamond"));
				pawnerPost.setPawnerPostHarddisk(request.getParameter("pawnerPostHarddisk"));
				pawnerPost.setPawnerPostItemType(request.getParameter("pawnerPostItemType"));
				pawnerPost.setPawnerPostModel(request.getParameter("pawnerPostModel"));
				pawnerPost.setPawnerPostPackage(request.getParameter("pawnerPostPackage"));
				pawnerPost.setPawnerPostProduction(request.getParameter("pawnerPostProduction"));
				pawnerPost.setPawnerPostPurchase(request.getParameter("pawnerPostPurchase"));
				pawnerPost.setPawnerPostPure(request.getParameter("pawnerPostPure"));
				pawnerPost.setPawnerPostRam(request.getParameter("pawnerPostRam"));
				pawnerPost.setPawnerPostSerial(request.getParameter("pawnerPostSerial"));
				pawnerPost.setPawnerPostSize(request.getParameter("pawnerPostSize"));
				pawnerPost.setPawnerPostTypeCamera(request.getParameter("pawnerPostTypeCamera"));
				pawnerPost.setPawnerPostWarranty(request.getParameter("pawnerPostTypeCamera"));
				pawnerPost.setPawnerPostWeigh(request.getParameter("pawnerPostWeigh"));
				
				post = pawnerPostService.insert(pawnerPost);
			} else {
				pawnerPostService.update(pawnerPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		String saveDirectory = "Q:/testPic/";
		String fileName ="";
		
		PawnerPostPicture pawnerPostPicture = new PawnerPostPicture();

		List<MultipartFile> Files = fileUpload.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != Files && Files.size() > 0) {
			for (MultipartFile multipartFile : Files) {

				fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					// Handle file content - multipartFile.getInputStream()
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(saveDirectory +fileName);
					
					//
					pawnerPostPicture.setPawnerPostPicture(fileName);
					pawnerPostPicture.setPawnerPostId(post);
					pawnerPostPictureService.insert(pawnerPostPicture);
					
				}
			}
		}
		return "redirect:pawner-track-pledge.html";
	}
	
	
	@RequestMapping("/deletePost")
	public String deletePost(HttpServletRequest request) {
		String pawnerId = (String) request.getSession().getAttribute("pawner"); // ***************warring
		long goldId = Long.parseLong(request.getParameter("id"));
		pawnerPostService.delete(goldId);
		return "redirect:pawner-post-list.html";
	}
	
	@RequestMapping("/pawner-post-history")
	public ModelAndView history(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPostHistoy.jsp");
		List<PawnerPost> pawnerPosts;
		List<Estimate> estimatesList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnerPosts = pawnerPostService.findPawnerPostByPawnerId(userId);
			estimatesList =estimateService.findEstimateByPawnerId(userId);
			
			
			mv.addObject("estimatesList", estimatesList);
			mv.addObject("pawnerPosts", pawnerPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawner-track-pledge")
	public ModelAndView pledge(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerTrackMyPlege.jsp");
		List<PawnerPost> pawnerPosts;
		List<Estimate> estimatesList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnerPosts = pawnerPostService.findPawnerPostByPawnerId(userId);
			estimatesList =estimateService.findEstimateByPawnerId(userId);
			
			
			mv.addObject("estimatesList", estimatesList);
			mv.addObject("pawnerPosts", pawnerPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
