package controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.crunchify.form.CrunchifyFileUpload;

import entity.PawnerPost;

@Controller
public class CrunchifyFileUploadController {

	@RequestMapping("/upload")
	public String crunchifyDisplayForm() {
		return "uploadfile.jsp";
	}
	
	@RequestMapping("/uploadfilesuccess")
	public String uploadfilesuccess() {
		return "uploadfilesuccess.jsp";
	}

	@RequestMapping("/savefiles")
	public ModelAndView crunchifySave(@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm, Model map)
			throws IllegalStateException, IOException {
		String saveDirectory = "d:/12/";
		String fileName ="";
		int i =1;
		
		PawnerPost post = new PawnerPost();

		List<MultipartFile> crunchifyFiles = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
			for (MultipartFile multipartFile : crunchifyFiles) {
				
				fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					post.setPawnerPostPicture1(pawnerPostPicture1);
					// Handle file content - multipartFile.getInputStream()
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(saveDirectory +fileName);
					m
					pic.setFileName(fileName)
					picServe.insert(pic)
				}
			}
		}
		int a = 2 , b = 3;
		
		int min = (a > b) ? a : b;
		
		crunchifyFiles.forEach(multipartFile -> {
			multipartFile.getOriginalFilename();
		});

		map.addAttribute("files", fileNames);
		map.addAttribute("Directory", saveDirectory);
		return new ModelAndView("uploadfilesuccess.html");
	}
}