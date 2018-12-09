package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import entity.Estimate;
import entity.OrderItem;
import entity.Pawner;
import entity.Pawnshop;
import entity.PawnshopPost;
import entity.Picture;
import fileupload.FileUpload;
import service.OrderItemService;
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
	
	@EJB(mappedName = "ejb:/BoonWeb//OrderItemServiceBean!service.OrderItemService")
	OrderItemService orederService;
	
	private final String CHAR_LIST = "1234567890";
	private final int RANDOM_STRING_LENGTH = 10;

	public String generateRandomString() {

		StringBuffer randStr = new StringBuffer();
		for (int i = 0; i < RANDOM_STRING_LENGTH; i++) {
			int number = getRandomNumber();
			char ch = CHAR_LIST.charAt(number);
			randStr.append(ch);
		}
		return randStr.toString();
	}

	private int getRandomNumber() {
		int randomInt = 0;
		Random randomGenerator = new Random();
		randomInt = randomGenerator.nextInt(CHAR_LIST.length());
		if (randomInt - 1 == -1) {
			return randomInt;
		} else {
			return randomInt - 1;
		}
	}
	
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
				pawnshopPost.setPawnshopPostWarranty(request.getParameter("pawnshopPostWarranty"));
				pawnshopPost.setPawnshopPostWeigh(request.getParameter("pawnshopPostWeigh"));
				pawnshopPost.setPawnshopPostPrice(request.getParameter("pawnshopPostPrice"));
				pawnshopPost.setPawnshopPostRemote(request.getParameter("pawnshopPostRemote"));
				pawnshopPost.setPawnshopPostQuality("1");
				pawnshopPost.setPawnshopPostCode(generateRandomString());
				post = pawnshopPostService.insert(pawnshopPost);
			} else {
				pawnshopPostService.update(pawnshopPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		String fileName = "";
		
		String dir = request.getServletContext().getRealPath("/")+"img\\uploadimg\\pawnshopPost";

		Picture picture = new Picture();

		List<MultipartFile> Files = fileUpload.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != Files && Files.size() > 0) {
			for (MultipartFile multipartFile : Files) {
				fileName = multipartFile.getBytes().hashCode() + "." + multipartFile.getContentType().split("/")[1];
				if (!"".equalsIgnoreCase(fileName)) {
					multipartFile.transferTo(new File(dir + fileName));
					System.out.println("multipartFile.transferTo => " +dir+fileName);
					fileNames.add(fileName);

					picture.setPicture(fileName);
					picture.setPawnshopId(pm);
					picture.setPawnshopPostId(post);
					pictureService.insert(picture);

				}
			}
		}
		pawnshopPostService.updatePicture(post.getPawnshopPostId(), fileNames.get(0));
		System.out.println("update picture => " + fileNames.get(0));
		return "redirect:pawnshop-list-post.html#pledge";
	}

	@RequestMapping("/pawnshop-list-post")
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopListPost.jsp");
		List<PawnshopPost> pawnshopPosts;
		List<OrderItem> order;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			
			order = orederService.findOrderByPawnshopId(userId);
			mv.addObject("order", order);
			
			pawnshopPosts = pawnshopPostService.findPawnshopPostByPawnshopId(userId);
			mv.addObject("pawnshopPosts", pawnshopPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/post-item-detail")
	public ModelAndView detail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerItemDetail.jsp");
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
	
	@RequestMapping("/pawnshop-complete-post")
	public String shopcom(HttpServletRequest request) {
		
		long pawnshopPostId = Long.parseLong(request.getParameter("pawnshopPostId"));
		String status = request.getParameter("status");
		try {

			pawnshopPostService.updateStatus(pawnshopPostId, status, "0");
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:pawnshop-list-history.html";
	}
}
