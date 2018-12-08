package controller;

import java.util.List;
import java.util.Random;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.OrderItem;
import entity.Pawner;
import entity.Pawnshop;
import entity.PawnshopPost;
import service.OrderItemService;
import service.PawnerService;
import service.PawnshopPostService;
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

	@RequestMapping("/pawner-register-form")
	public ModelAndView newGold() {
		ModelAndView mv = new ModelAndView("pawnerRegisterForm.jsp");
		Pawner pawner = new Pawner();
		mv.addObject("pawner", pawner);
		return mv;
	}

	private final String CHAR_LIST = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
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

	@RequestMapping("/savePawner")
	public String savePawner(@ModelAttribute("pawner") Pawner pawner, BindingResult result,
			HttpServletRequest request) {
		try {
			if (pmService.findPawnerEmai(pawner.getPawnerEmail()).isEmpty()) {
				pawner.setPawnerState("pawner");
				pawner.setPawnerUsercode(generateRandomString());
				pmService.insert(pawner);
			} else
				return "redirect:pawner-index.html";

		} catch (Exception e) {
			return "redirect:pawner-register-form.html";
		}
		return "redirect:index.jsp";
	}

	@RequestMapping("/updatePawner")
	public String updatePawnshop(@ModelAttribute("pawner") Pawner pawner, BindingResult result,
			HttpServletRequest request) {
		try {
			pawner.setPawnerState("pawner");
			pmService.update(pawner);

			/* */
			request.getSession().setAttribute("id", pawner.getPawnerId());
			request.getSession().setAttribute("isLogin", "yes");
			request.getSession().setAttribute("userType", "pawner");
			request.getSession().setAttribute("username",
					pawner.getPawnerFirstname() + " " + pawner.getPawnerLastname());
			request.getSession().setAttribute("email", pawner.getPawnerEmail());
			request.getSession().setAttribute("pawnerState", pawner.getPawnerState());

		} catch (Exception e) {
			return "redirect:pawner-register-form.html#failed";
		}
		return "redirect:index.html?isLogin";
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
