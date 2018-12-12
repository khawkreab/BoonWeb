/*!-- 
// page : PawnshopController
// version : 1.0
// task : connect database in pawnshop-index
// edit by : khawkreab
 --*/
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

import entity.PawnerPost;
import entity.Pawnshop;
import entity.Picture;
import fileupload.FileUpload;
import service.PawnerPostService;
import service.PawnerService;
import service.PawnshopService;
import service.PictureService;

@Controller
public class PawnshopController {

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;

	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;
	
	@EJB(mappedName = "ejb:/BoonWeb/PawnerServiceBean!service.PawnerService")
	PawnerService pmService;


	@RequestMapping("/pawnshop-register-form")
	public ModelAndView newPawner() {
		ModelAndView mv = new ModelAndView("pawnshopRegisterForm.jsp");
		Pawnshop pawnshop = new Pawnshop();
		mv.addObject("pawnshop", pawnshop);
		return mv;
	}

	@RequestMapping("/savePawnshop")
	public String savePawnshop(@ModelAttribute("pawnshop") Pawnshop pawnshop, BindingResult result,
			HttpServletRequest request) {
		try {
			if (pawnshopServ.findPawnshopEmail(pawnshop.getPawnshopEmail()).isEmpty() && pmService.findPawnerEmai(pawnshop.getPawnshopEmail()).isEmpty()) {
				pawnshop.setPawnshopState("pawnshop");
				pawnshop.setPawnshopUsercode(generateRandomString());
				pawnshop.setPawnshopPicture("profile-icon.jpg");
				pawnshopServ.insert(pawnshop);
			} else {
				return "redirect:pawnshop-register-form.html#fail";
			}
		} catch (Exception e) {
			return "redirect:pawnshop-register-form.html#failed";
		}
		return "redirect:index.html?success";
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

	@RequestMapping("/updatePawnshop")
	public String updatePawnshop(@ModelAttribute("pawnshop") FileUpload fileUpload, BindingResult result,
			HttpServletRequest request) {
		long userid = (long) request.getSession().getAttribute("id");
		String change = request.getParameter("changepicture");
		Pawnshop pawnshop =  new Pawnshop();
		pawnshop = pawnshopServ.findPawnshopById(userid);
		try {
			if (change.equals("change")) {
				String saveDirectory = "L:/Project 3 1-2560/BoonWeb/WebContent/img/uploadimg/pawnshop/";
				String dir = request.getServletContext().getRealPath("/")+"img\\uploadimg\\pawnshop\\";
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
							// multipartFile.transferTo(new File(saveDirectory + fileName));
							multipartFile.transferTo(new File(dir + fileName));
							fileNames.add(fileName);
							pawnshop.setPawnshopPicture(fileName);

							System.out.println("multipartFile.transferTo => " + saveDirectory + fileName);

						}
					}
				}
			}
			
			pawnshop.setPawnshopName(request.getParameter("pawnshopName"));
			pawnshop.setPawnshopPassword(request.getParameter("pawnshopPassword"));
			pawnshop.setPawnshopTel(request.getParameter("pawnshopTel"));
			pawnshop.setPawnshopAddress(request.getParameter("pawnshopAddress"));
			pawnshop.setPawnshopProvince(request.getParameter("pawnshopProvince"));
			pawnshop.setPawnshopZipcode(request.getParameter("pawnshopZipcode"));
			//pawnshop.setPawnshopCover(request.getParameter("pawnshopCover"));
			
			pawnshopServ.update(pawnshop);

		} catch (Exception e) {
			return "redirect:pawnhop-edit-profile.html#failed";
		}
		return "redirect:pawnhop-edit-profile.html?saved";
	}

	// ********* ยังไม่มีหน้า ***********//
	@RequestMapping("/pawnhop-edit-profile.html")
	public ModelAndView editPawnshop(HttpServletRequest request) {
		long userId = (long) request.getSession().getAttribute("id");
		Pawnshop Pawnshop;
		ModelAndView mv = new ModelAndView("pawnshopProfile.jsp");
		try {
			Pawnshop = pawnshopServ.findPawnshopById(userId);
			mv.addObject("pawnshop", Pawnshop);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/pawnshop-index")
	public ModelAndView pawnshopIndex(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnshopIndex.jsp");
		List<Picture> pictures;
		List<PawnerPost> pawnerPosts;
		try {
			long userId = (long) request.getSession().getAttribute("id");
			pawnerPosts = pawnerPostService.findPawnerPostByPawnshopId(userId);
			pictures = pictureService.getAllPicture();
			mv.addObject("picture", pictures);
			mv.addObject("pawnerPosts", pawnerPosts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
