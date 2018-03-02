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

import entity.OrderItem;
import entity.Pawner;
import entity.Pawnshop;
import entity.PawnshopPost;
import service.OrderItemService;
import service.PawnerService;
import service.PawnshopPostService;


@Controller
public class OrderController {
	
	@EJB(mappedName = "ejb:/BoonWeb//OrderItemServiceBean!service.OrderItemService")
	OrderItemService orederService;
	@EJB(mappedName = "ejb:/BoonWeb//PawnerServiceBean!service.PawnerService")
	PawnerService pmService;
	@EJB(mappedName = "ejb:/BoonWeb//PawnshopPostServiceBean!service.PawnshopPostService")
	PawnshopPostService pawnshopPostService;
	
	@RequestMapping("/saveOrder")
	public String saveOreder(@ModelAttribute("pawnerOreder") OrderItem pawnerOreder, BindingResult result,
			HttpServletRequest request) {
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pawner = pmService.findPawnerById(userId);
		
		long pawnshopPostId = Long.parseLong(request.getParameter("pawnshopPostId"));
		PawnshopPost ppId = pawnshopPostService.findPawnshopPostById(pawnshopPostId);
		Date date = new Date();
		
		try {
			System.out.println(pawnerOreder.getClass());
			if (0 == pawnerOreder.getOrderItemId()) { 
				pawnerOreder.setPawnshopPostId(ppId);
				pawnerOreder.setOrderItemDateIn(date);
				pawnerOreder.setPawnerId(pawner);
				orederService.insert(pawnerOreder);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:pawner-order.html";
	}
	
	@RequestMapping("/pawner-order")
	public ModelAndView pledgesell(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerOrder.jsp");
		
		long userId = (long) request.getSession().getAttribute("id");
		List<OrderItem> or = orederService.findOrderByPawnerId(userId);
		mv.addObject("order", or);
		return mv;
	}
}
