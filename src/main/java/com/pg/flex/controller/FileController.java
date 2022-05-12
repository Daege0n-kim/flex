package com.pg.flex.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {

  @Value("${upload.file.path}")
  private String UPLOAD_FILE_PATH;

  @PostMapping(value = "/upload-file")
  public void uploadFile(@RequestParam("uploadFile") MultipartFile[] multipartFile) {

    for(MultipartFile file : multipartFile) {
      String prefix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1, file.getOriginalFilename().length());
      String fileName = UUID.randomUUID().toString() + "." + prefix;
      String pathName = UPLOAD_FILE_PATH + fileName;

      File dest = new File(pathName);
  
      try {
        file.transferTo(dest);
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
    }

  }
  
}
