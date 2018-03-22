package controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import entity.PawnerPost;
import entity.Picture;
import fileupload.FileUpload;
import service.PawnerPostService;
import service.PictureService;

@Controller
public class FileUploadController {
	
	@EJB(mappedName = "ejb:/BoonWeb//PawnerPostServiceBean!service.PawnerPostService")
	PawnerPostService pawnerPostService;
	
	@EJB(mappedName = "ejb:/BoonWeb/PictureServiceBean!service.PictureService")
	PictureService pictureService;

	@RequestMapping("/upload")
	public String crunchifyDisplayForm() {
		return "uploadfile.jsp";
	}
	
	@RequestMapping("/uploadfilesuccess")
	public String uploadfilesuccess() {
		return "uploadfilesuccess.jsp";
	}

	@RequestMapping("/savefiles")
	public ModelAndView crunchifySave(@ModelAttribute("uploadForm") FileUpload fileUpload, Model map, HttpServletRequest request)
			throws IllegalStateException, IOException {
		
		PawnerPost pawnerPost = new PawnerPost();
//		pawnerPost.equals(fileUpload);
		Date date = new Date();
		String status = "uploadimage";
		PawnerPost post = new PawnerPost();
		try {
			System.out.println(pawnerPost.getClass());
			if (0 == pawnerPost.getPawnerPostId()) { 
				pawnerPost.setPawnerPostDate(date);
				pawnerPost.setPawnerPostStatus(status);
				
				pawnerPost.setPawnerPostName(request.getParameter("pawnerPostName"));
				
				post = pawnerPostService.insert(pawnerPost);
			} else {
				pawnerPostService.update(pawnerPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		pawnerPost = pawnerPostService.findPawnerPostByStatus("uploadimage");
		
		String saveDirectory = "d:/12/";
		String fileName ="";
		
		Picture picture = new Picture();

		List<MultipartFile> Files = fileUpload.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != Files && Files.size() > 0) {
			for (MultipartFile multipartFile : Files) {

				fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					// Handle file content - multipartFile.getInputStream()
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(saveDirectory +fileName);
					
					//
					picture.setPicture(fileName);
					picture.setPawnerPostId(post);
					pictureService.insert(picture);
					
				}
			}
		}
		
		pawnerPostService.updateStatus(pawnerPost.getPawnerPostId(), "waiting");

		map.addAttribute("files", fileNames);
		map.addAttribute("Directory", saveDirectory);
		return new ModelAndView("uploadfilesuccess.html");
	}
}