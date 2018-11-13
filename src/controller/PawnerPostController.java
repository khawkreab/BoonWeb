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
import entity.Picture;
import fileupload.FileUpload;
import service.EstimateService;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;
import service.PictureService;

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
	
	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;
	
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
		List<MultipartFile> Files = fileUpload.getFiles();
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
				System.out.println("insert pawnerPost success!!!");
			} else {
				pawnerPostService.update(pawnerPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("Start upload picture");
		String fileName ="";
		
		String dir = request.getServletContext().getRealPath("/")+"img\\uploadImge\\";
		
		Picture picture = new Picture();

		List<String> fileNames = new ArrayList<String>();

		if (null != Files && Files.size() > 0) {
			System.out.println("picture != 0");
			for (MultipartFile multipartFile : Files) {
				fileName = multipartFile.getBytes().hashCode()+ "." + multipartFile.getContentType().split("/")[1];
				if (!"".equalsIgnoreCase(fileName)) {
					multipartFile.transferTo(new File(dir+ fileName ));
					System.out.println("multipartFile.transferTo => " +dir+fileName);
					
					picture.setPicture(fileName);
					picture.setPawnerId(pm);
					picture.setPawnerPostId(post);
					pictureService.insert(picture);
					
					fileNames.add(fileName);
				}
			}
		}
		pawnerPostService.updatePicture(post.getPawnerPostId(), fileNames.get(0));
		System.out.println("post.getPawnerPostId(), fileNames.get(0)");
/*		System.out.println("test update picture => " +fileNames.get(0));
*/		return "redirect:pawner-track-pledge.html";
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
		List<Estimate> estimatesListApprove , estimatesListComplete;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			estimatesListApprove =estimateService.findEstimateByPawnerIdAndStatus(userId, "approve");
			estimatesListComplete =estimateService.findEstimateByPawnerIdAndStatus(userId, "complete");
			
			
			mv.addObject("estimatesListApprove", estimatesListApprove);
			mv.addObject("estimatesListComplete", estimatesListComplete);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping("/pawner-track-pledge")
	public ModelAndView pledge(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerTrackMyPlege.jsp");
		List<PawnerPost> pawnerPostsWaiting , pawnerPostsProcess;
		List<Estimate> estimatesList;
		try {
			long userId = (long) request.getSession().getAttribute("id");
		/*	pawnerPostsWaiting = pawnerPostService.findPawnerPostByPawnerIdAndStatus(userId , "waiting");*/
			pawnerPostsProcess = pawnerPostService.getAllPawnerPost();
			estimatesList =estimateService.findEstimateByPawnerIdAndStatus(userId , "process");
			
			
			mv.addObject("estimatesList", estimatesList);
			/*mv.addObject("pawnerPosts", pawnerPostsWaiting);*/
			mv.addObject("pawnerPostsProcess", pawnerPostsProcess);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
