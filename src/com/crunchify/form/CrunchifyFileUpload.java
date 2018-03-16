package com.crunchify.form;
 
import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;

import org.springframework.web.multipart.MultipartFile;
 
@Entity
public class CrunchifyFileUpload implements Serializable {
 
    private List<MultipartFile> crunchifyFiles;
 
    public List<MultipartFile> getFiles() {
        return crunchifyFiles;
    }
 
    public void setFiles(List<MultipartFile> files) {
        this.crunchifyFiles = files;
    }
}