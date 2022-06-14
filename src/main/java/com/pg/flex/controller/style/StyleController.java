package com.pg.flex.controller.style;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.pg.flex.dto.Style;
import com.pg.flex.dto.response.SneakersResponse;
import com.pg.flex.service.mypage.MyPageService;
import com.pg.flex.service.style.StyleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StyleController {

    @Autowired
    private MyPageService myPageService;

    @GetMapping("/style")
    public String Style(Model model){

        List<SneakersResponse> sneakers = myPageService.getSneakers();
        List<SneakersResponse> jodans = myPageService.getJodan();
        List<SneakersResponse> stone = myPageService.getStone();
        List<SneakersResponse> common = myPageService.getCommon();

        for(SneakersResponse data: sneakers) {
            List<String> related = myPageService.getRelatedProductByBoardIndex(data.getBoardIndex());

            data.setRelated(related);
        }

        for(SneakersResponse data: jodans) {
            List<String> related = myPageService.getRelatedProductByBoardIndex(data.getBoardIndex());

            data.setRelated(related);
        }

        for(SneakersResponse data: stone) {
            List<String> related = myPageService.getRelatedProductByBoardIndex(data.getBoardIndex());

            data.setRelated(related);
        }

        for(SneakersResponse data: common) {
            List<String> related = myPageService.getRelatedProductByBoardIndex(data.getBoardIndex());

            data.setRelated(related);
        }

        model.addAttribute("sneakers", sneakers);
        model.addAttribute("jodan", jodans);
        model.addAttribute("stone", stone);
        model.addAttribute("common", common);
        return "/style/StyleMain";
    }

    @GetMapping("/related")
    public String Related(){
        return "/mypage/Related_Post/Related_post";
    }
    
}
