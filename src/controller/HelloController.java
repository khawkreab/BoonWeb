package controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	private static final String UPLOAD_DIRECTORY = "/images";
	private static final int THRESHOLD_SIZE = 1024 * 1024 * 3; // 3MB

//	Food food = new Food();

	@RequestMapping(value = "savefile", method = RequestMethod.POST)
	public ModelAndView saveimage(@RequestParam CommonsMultipartFile file, HttpSession session) throws Exception {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(THRESHOLD_SIZE);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);
		ServletContext context = session.getServletContext();

		String uploadPath = context.getRealPath(UPLOAD_DIRECTORY);
		System.out.println(uploadPath);

		byte[] bytes = file.getBytes();
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(new File(uploadPath + File.separator + file.getOriginalFilename())));
		stream.write(bytes);
		stream.flush();
		stream.close();

//		food.setPicture(uploadPath + file.getOriginalFilename());
//		foodService.insert(food);
		
		return new ModelAndView("uploadform.html", "filesuccess", "File successfully saved!"+uploadPath + file.getOriginalFilename());
	}
}
