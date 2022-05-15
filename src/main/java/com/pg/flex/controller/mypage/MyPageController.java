package com.pg.flex.controller.mypage;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import com.pg.flex.dto.UserDetail;
import com.pg.flex.dto.UserImage;
import com.pg.flex.service.mypage.MyPageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MyPageController {

  @Autowired
  private MyPageService myPageService;

  @Value("${upload.file.path}")
  private String UPLOAD_FILE_PATH;

  @GetMapping(value = "/mypage")
  public String myPage(HttpSession session, Model model){
    UserDetail userDetail = myPageService.getUserDetail((String)session.getAttribute("loginId"));

    String path = "/resources/uploadfile/" + userDetail.getSavedFileName();

    model.addAttribute("path", path);
    model.addAttribute("userDetail", userDetail);
    return "/mypage/index";

  }

  @GetMapping(value = "/post_mypage")
  public String postMyPage() {
    return "/mypage/post_mypage";
  }

  @GetMapping(value = "/post_board")
  public String postBoard() {
    return "/mypage/post_board";
  }

  @PostMapping(value = "/post_mypage")
  public String postMyInfrom(HttpSession session, @RequestParam("myImage") MultipartFile multipartFile) {

    String prefix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".") + 1, multipartFile.getOriginalFilename().length());
    String fileName = UUID.randomUUID().toString() + "." + prefix;
    String pathName = UPLOAD_FILE_PATH + fileName;

    String userId = (String)session.getAttribute("loginId");
    String originalFileName = multipartFile.getOriginalFilename();
    String savedFileName = fileName;

    File dest = new File(pathName);

    try {
      multipartFile.transferTo(dest);
      UserImage userImage = new UserImage(userId, originalFileName, savedFileName);
      myPageService.postUserImage(userImage);
    } catch (IllegalStateException | IOException e) {
      e.printStackTrace();
    }

    return "redirect:/mypage";
  }
}
