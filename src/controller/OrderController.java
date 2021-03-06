package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.OrderItem;
import entity.Pawner;
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
	public String saveOreder(HttpServletRequest request, @RequestBody String cart) throws JsonParseException, JsonMappingException, IOException {
		
		System.out.println(cart);
		
		long userId = (long) request.getSession().getAttribute("id");
		Pawner pawner = pmService.findPawnerById(userId);
		
		ObjectMapper mapper = new ObjectMapper();
		List<PawnshopPost>orderList = new ArrayList<PawnshopPost>(); 
		OrderItem pawnerOreder = new OrderItem();
		
		orderList = mapper.readValue(cart, new TypeReference<List<PawnshopPost>>() {});
		
		Date date = new Date();

		try {
			
			for(PawnshopPost order : orderList) {
				
				PawnshopPost ppId = pawnshopPostService.findPawnshopPostById(order.getPawnshopPostId());
				pawnerOreder.setPawnshopPostId(ppId);
				pawnerOreder.setOrderItemDateIn(date);
				pawnerOreder.setPawnerId(pawner);
				pawnerOreder.setOrderStatus("coming");
				orederService.insert(pawnerOreder);
				pawnshopPostService.updateStatus(ppId.getPawnshopPostId(), "coming", "0");
			}
			return "redirect:pawner-order.html?success";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:pawner-order.html?success";
	}

	@RequestMapping("/pawner-order")
	public ModelAndView pledgesell(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerOrder.jsp");

		long userId = (long) request.getSession().getAttribute("id");
		List<OrderItem> or = orederService.findOrderByPawnerId(userId);
		mv.addObject("order", or);
		return mv;
	}
	
	
	@RequestMapping("/pawner-print-order")
	public ModelAndView print(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("pawnerPrintOrder.jsp");

		long byorder = Long.parseLong(request.getParameter("order"));
		OrderItem order = orederService.findorderItemById(byorder);
		mv.addObject("order", order);
		return mv;
	}
	
	@RequestMapping("/pawner-cart")
	public ModelAndView pawnercart() {
		ModelAndView mv = new ModelAndView("pawnerCart.jsp");
		return mv;
	}
}
