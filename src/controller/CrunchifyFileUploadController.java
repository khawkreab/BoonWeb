package controller;

import com.crunchify.form.CrunchifyFileUpload;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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

		List<MultipartFile> crunchifyFiles = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
			for (MultipartFile multipartFile : crunchifyFiles) {

				fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					// Handle file content - multipartFile.getInputStream()
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(saveDirectory +fileName);
				}
			}
		}

		map.addAttribute("files", fileNames);
		map.addAttribute("Directory", saveDirectory);
		return new ModelAndView("uploadfilesuccess.html");
	}
}