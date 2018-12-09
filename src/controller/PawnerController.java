package controller;

import java.io.File;
import java.util.ArrayList;
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

import entity.OrderItem;
import entity.Pawner;
import entity.Pawnshop;
import entity.PawnshopPost;
import fileupload.FileUpload;
import service.OrderItemService;
import service.PawnerService;
import service.PawnshopPostService;
import service.PawnshopService;
import service.PictureService;

@Controller
public class PawnerController {

	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

	@EJB(mappedName = "ejb:/BoonWeb/OrderItemServiceBean!service.OrderItemService")
	OrderItemService orService;

	@EJB(mappedName = "ejb:/BoonWeb/PawnshopPostServiceBean!service.PawnshopPostService")
	PawnshopPostService psService;

	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@RequestMapping("/pawner-register-form")
	public ModelAndView newGold() {
		ModelAndView mv = new ModelAndView("pawnerRegisterForm.jsp");
		Pawner pawner = new Pawner();
		mv.addObject("pawner", pawner);
		return mv;
	}

	private final String CHAR_LIST = "1234567890";
	private final int RANDOM_STRING_LENGTH = 6;

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

	@RequestMapping("/savePawner")
	public String savePawner(@ModelAttribute("pawner") Pawner pawner, BindingResult result,
			HttpServletRequest request) {
		try {
			if (pmService.findPawnerEmai(pawner.getPawnerEmail()).isEmpty() && pawnshopServ.findPawnshopEmail(pawner.getPawnerEmail()).isEmpty()) {
				pawner.setPawnerState("pawner");
				pawner.setPawnerUsercode(generateRandomString());
				pawner.setPawnerPicture("profile-icon.jpg");
				pmService.insert(pawner);
			} else
				return "redirect:pawner-index.html";

		} catch (Exception e) {
			return "redirect:pawner-register-form.html";
		}
		return "redirect:index.jsp";
	}

	@RequestMapping("/updatePawner")
	public String updatePawnshop(@ModelAttribute("pawner") FileUpload fileUpload, BindingResult result,
			HttpServletRequest request) {
		long pawnerid = (long) request.getSession().getAttribute("id");
		String change = request.getParameter("changepicture");
		Pawner pawner = new Pawner();
		pawner = pmService.findPawnerById(pawnerid);
		try {
			if (change.equals("change")) {
				String saveDirectory = "L:/Project 3 1-2560/BoonWeb/WebContent/img/uploadimg/pawner/";
				String fileName = "";
				List<MultipartFile> Files = fileUpload.getFiles();
				List<String> fileNames = new ArrayList<String>();
				
				if (Files != null && Files.size() > 0) {
					System.out.println("picture != 0");
					for (MultipartFile multipartFile : Files) {

						fileName = multipartFile.getBytes().hashCode() + "."
								+ multipartFile.getContentType().split("/")[1];
						if (!"".equalsIgnoreCase(fileName)) {
							// Handle file content - multipartFile.getInputStream()
							multipartFile.transferTo(new File(saveDirectory + fileName));
							fileNames.add(fileName);
							pawner.setPawnerPicture(fileName);

							System.out.println("multipartFile.transferTo => " + saveDirectory + fileName);

						}
					}
				}
			}
			pawner.setPawnerFirstname(request.getParameter("pawnerFirstname"));
			pawner.setPawnerLastname(request.getParameter("pawnerLastname"));
			pawner.setPawnerPassword(request.getParameter("pawnerPassword"));
			pawner.setPawnerPhone(request.getParameter("pawnerPhone"));
			pawner.setPawnerAddress(request.getParameter("pawnerAddress"));
			pawner.setPawnerProvince(request.getParameter("pawnerProvince"));
			pawner.setPawnerZipcode(request.getParameter("pawnerZipcode"));
			pawner.setPawnerCover(request.getParameter("pawnerCovere"));

			pmService.update(pawner);

			/* */
			request.getSession().setAttribute("username",
					pawner.getPawnerFirstname() + " " + pawner.getPawnerLastname());
			request.getSession().setAttribute("pawnerPicture", pawner.getPawnerPicture());

		} catch (Exception e) {
			return "redirect:pawner-register-form.html#failed";
		}
		return "redirect:pawner-edit.html?saved";
	}

	@RequestMapping("/pawner-edit")
	public ModelAndView editPawner(HttpServletRequest request) {
		long paramId = (long) request.getSession().getAttribute("id");
		Pawner foundPawner;
		ModelAndView mv = new ModelAndView("pawnerProfile.jsp");
		try {
			foundPawner = pmService.findPawnerById(paramId);
			mv.addObject("pawner", foundPawner);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/pawner-index")
	public ModelAndView pawnerIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerIndex.jsp");
		List<PawnshopPost> pawnshopPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshopPosts = psService.listPawnshopPostByPawnerId(userId);

			mv.addObject("pawnshopPosts", pawnshopPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/pawner-off-pledge")
	public ModelAndView pawnerpledge(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerOffPledge.jsp");
		List<PawnshopPost> pawnshopPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnshopPosts = psService.listPawnshopPostByPawnerId(userId);

			mv.addObject("pawnshopPosts", pawnshopPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}
