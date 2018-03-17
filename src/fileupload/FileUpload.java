package fileupload;
 
import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;

import org.springframework.web.multipart.MultipartFile;
 
@Entity
public class FileUpload implements Serializable {
 
    private List<MultipartFile> filesUpload;
 
    public List<MultipartFile> getFiles() {
        return filesUpload;
    }
 
    public void setFiles(List<MultipartFile> files) {
        this.filesUpload = files;
    }
}