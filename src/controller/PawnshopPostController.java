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

import entity.Pawner;
import entity.Pawnshop;
import entity.PawnshopPost;
import entity.Picture;
import fileupload.FileUpload;
import service.PawnshopPostService;
import service.PawnshopService;
import service.PictureService;

@Controller
public class PawnshopPostController {

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopPostServiceBean!service.PawnshopPostService")
	PawnshopPostService pawnshopPostService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;

	@RequestMapping("/saveShopPost")
	public String savePost(@ModelAttribute("pawnshopPost") FileUpload fileUpload, BindingResult result,
			HttpServletRequest request) throws IllegalStateException, IOException {

		PawnshopPost pawnshopPost = new PawnshopPost();
		PawnshopPost post = new PawnshopPost();

		Date date = new Date();
		String status = "waiting";

		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop pm = pawnshopServ.findPawnshopById(userId);

		try {
			System.out.println(pawnshopPost.getClass());
			if (pawnshopPost.getPawnshopPostId() == 0) {

				pawnshopPost.setPawnshopPostDate(date);
				pawnshopPost.setPawnshopPostStatus(status);
				pawnshopPost.setPawnshopId(pm);

				pawnshopPost.setPawnshopPostName(request.getParameter("pawnshopPostName"));
				pawnshopPost.setPawnshopPostBracelet(request.getParameter("pawnshopPostBracelet"));
				pawnshopPost.setPawnshopPostBattery(request.getParameter("pawnshopPostBattery"));
				pawnshopPost.setPawnshopPostBrand(request.getParameter("pawnshopPostBrand"));
				pawnshopPost.setPawnshopPostCameraLen(request.getParameter("pawnshopPostCameraLen"));
				pawnshopPost.setPawnshopPostCapacity(request.getParameter("pawnshopPostCapacity"));
				pawnshopPost.setPawnshopPostCase(request.getParameter("pawnshopPostCase"));
				pawnshopPost.setPawnshopPostCategory(request.getParameter("pawnshopPostCategory"));
				pawnshopPost.setPawnshopPostDescription(request.getParameter("pawnshopPostDescription"));
				pawnshopPost.setPawnshopPostDevice(request.getParameter("pawnshopPostDevice"));
				pawnshopPost.setPawnshopPostDiamond(request.getParameter("pawnshopPostDiamond"));
				pawnshopPost.setPawnshopPostHarddisk(request.getParameter("pawnshopPostHarddisk"));
				pawnshopPost.setPawnshopPostItemType(request.getParameter("pawnshopPostItemType"));
				pawnshopPost.setPawnshopPostModel(request.getParameter("pawnshopPostModel"));
				pawnshopPost.setPawnshopPostPackage(request.getParameter("pawnshopPostPackage"));
				pawnshopPost.setPawnshopPostProduction(request.getParameter("pawnshopPostProduction"));
				pawnshopPost.setPawnshopPostPurchase(request.getParameter("pawnshopPostPurchase"));
				pawnshopPost.setPawnshopPostPure(request.getParameter("pawnshopPostPure"));
				pawnshopPost.setPawnshopPostRam(request.getParameter("pawnshopPostRam"));
				pawnshopPost.setPawnshopPostSerial(request.getParameter("pawnshopPostSerial"));
				pawnshopPost.setPawnshopPostSize(request.getParameter("pawnshopPostSize"));
				pawnshopPost.setPawnshopPostTypeCamera(request.getParameter("pawnshopPostTypeCamera"));
				pawnshopPost.setPawnshopPostWarranty(request.getParameter("pawnshopPostTypeCamera"));
				pawnshopPost.setPawnshopPostWeigh(request.getParameter("pawnshopPostWeigh"));
				pawnshopPost.setPawnshopPostPrice(request.getParameter("pawnshopPostPrice"));

				post = pawnshopPostService.insert(pawnshopPost);
			} else {
				pawnshopPostService.update(pawnshopPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// String saveDirectory = "Q:/testPic/";
		String saveDirectory = "C:/Users/sitti/OneDrive/Works/Project 3 1-2560/project v.1.0.1-beta.4/BoonWeb/WebContent/images/";
		String fileName = "";

		Picture picture = new Picture();

		List<MultipartFile> Files = fileUpload.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != Files && Files.size() > 0) {
			for (MultipartFile multipartFile : Files) {
				fileName = multipartFile.getBytes().hashCode() + "." + multipartFile.getContentType().split("/")[1];
				// fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					// Handle file content - multipartFile.getInputStream()
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(fileName);

					//
					picture.setPicture(fileName);
					picture.setPawnshopId(pm);
					picture.setPawnshopPostId(post);
					pictureService.insert(picture);

				}
			}
		}
		pawnshopPostService.updatePicture(post.getPawnshopPostId(), fileNames.get(0));
		System.out.println("test update picture => " + fileNames.get(0));
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
		List<Picture> pictures;

		try {
			long userId = (long) request.getSession().getAttribute("id");

			long postId = Long.parseLong(request.getParameter("item"));
			pawnshopPost = pawnshopPostService.findPawnshopPostById(postId);
			pictures = pictureService.findPictureByPawnshopPostId(postId);

			mv.addObject("pawnshopPost", pawnshopPost);
			mv.addObject("pictures", pictures);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
