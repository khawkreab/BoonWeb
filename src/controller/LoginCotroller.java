/*!-- 
// page : LoginCotroller
// version : 1.0
// task : add session name
// edit by : khawkreab
 --*/

package controller;

import java.awt.Window;
import java.util.List;

import javax.ejb.EJB;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
public class LoginCotroller {

	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnshopServiceBean!service.PawnshopService")
	PawnshopService pawnshopServ;

	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;

	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;

	@EJB(mappedName = "ejb:/BoonWeb//EstimateServiceBean!service.EstimateService")
	EstimateService estimateService;

	@RequestMapping("/navbar")
	public ModelAndView navbar(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("navbar.jsp");
		Pawner pawner = new Pawner();
		Pawnshop pawnshop = new Pawnshop();

		try {
			if (request.getSession().getAttribute("id") != null) {
				long userid = (long) request.getSession().getAttribute("id");
				String usertype = (String) request.getSession().getAttribute("userType");
				
				if (usertype.equals("pawner")) {
					pawner = pmService.findPawnerById(userid);
					request.getSession().setAttribute("username",
							pawner.getPawnerFirstname() + " " + pawner.getPawnerLastname());

					/* set notification */
					String notifiPawnerFollowPlege = Integer.toString(pawnerPostService
							.findPawnerPostByPawnerIdAndStatus(pawner.getPawnerId(), "process").size());
					request.getSession().setAttribute("notifiPawnerFollowPlege", notifiPawnerFollowPlege);
					mv.addObject("pawner", pawner);
				} else if (usertype.equals("pawnShop")) {
					pawnshop = pawnshopServ.findPawnshopById(userid);
					request.getSession().setAttribute("username", pawnshop.getPawnshopName());

					/* set notification */
					String notifiPawnshopFollowEstimate = Integer.toString(estimateService.findEstimateByPawnshopIdAndStatus(pawnshop.getPawnshopId(), "approve").size()
							+ estimateService.findEstimateByPawnshopIdAndStatus(pawnshop.getPawnshopId(), "denai").size());
					request.getSession().setAttribute("notifiPawnshopFollowEstimate", notifiPawnshopFollowEstimate);
					mv.addObject("pawnshop", pawnshop);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("index.jsp");
		List<Picture> pictures;
		List<PawnerPost> pawnerPosts;
		try {
			if (request.getSession().getAttribute("id") != null) {
				long userId = (long) request.getSession().getAttribute("id");
				pawnerPosts = pawnerPostService.findPawnerPostByPawnshopId(userId);
				mv.addObject("pawnerPosts", pawnerPosts);
			}

			pictures = pictureService.getAllPicture();
			mv.addObject("picture", pictures);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/profile")
	public ModelAndView profile(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("profile.jsp");
		Pawner pawner;
		Pawnshop pawnshop;
		String usertype = (String) request.getSession().getAttribute("userType");
		String usercode = request.getParameter("usercode");
		try {

			if (usertype.equals("pawner")) {
				pawnshop = pawnshopServ.findPawnShopByUsercode(usercode);
				mv.addObject("pawnshop", pawnshop);
			} else {
				pawner = pmService.findPawnerByUsercode(usercode);
				mv.addObject("pawner", pawner);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/loginProcess")
	public String login(HttpServletRequest request) {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Pawner pawner;
		Pawnshop pawnshop;

		String adminName = "admin";
		String adminPassword = "admin";
		try {
			pawner = pmService.findPawnerByEmailAndPassword(email, password);
			if (pawner.equals(null)) {
				return "redirect:index.html";
			} else {

				/* */
				request.getSession().setAttribute("id", pawner.getPawnerId());
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "pawner");

				return "redirect:index.html?isLogin";

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			pawnshop = pawnshopServ.findPawnShopByEmailAndPassword(email, password);
			if (pawnshop.equals(null)) {
				return "redirect:index.html";
			} else {

				/* */
				request.getSession().setAttribute("id", pawnshop.getPawnshopId());
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "pawnShop");

				return "redirect:index.html?isLogin";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			if (adminName.equals(email) && adminPassword.equals(password)) {
				request.getSession().setAttribute("isLogin", "yes");
				request.getSession().setAttribute("userType", "admin");
				request.getSession().setAttribute("username", "Admin");
				return "redirect:admin-index.html";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:index.html?login=fail";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping("/logout")
	public String signOut(HttpServletRequest request) {
		try {
			request.getSession().putValue("isLogin", "no");
			request.getSession().removeAttribute("id");
			request.getSession().removeAttribute("userType");
			request.getSession().removeAttribute("notifiPawnerFollowPlege");
			request.getSession().removeAttribute("notifiPawnshopFollowEstimate");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:index.jsp";
	}
}
