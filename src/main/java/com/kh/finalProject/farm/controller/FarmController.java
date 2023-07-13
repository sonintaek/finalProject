package com.kh.finalProject.farm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.finalProject.farm.model.service.FarmService;
import com.kh.finalProject.farm.model.vo.Farm;

@Controller

@RequestMapping("/farm")
public class FarmController {
	@Autowired
	private FarmService farmService;
	
	@RequestMapping("/indexFarm.do")
	public void resFarm() {}
	
	@RequestMapping("/gunpo.go")
	public void gunpoFarm() {}
	
	
	@ResponseBody
	@GetMapping("/farmInfo") // JSON 형식
	public Farm farmInfo(@RequestParam int farmId, Model model) {
	  // farmService.selectFarmById() 메소드를 호출하여 farmId에 해당하는 농장 정보를 불러옵니다.
	  Farm selectedFarm = farmService.selectFarmById(farmId);
	  System.out.println(farmId);
	  return selectedFarm; // JSON 형식으로 농장 정보를 반환합니다.
	}
	
	@PostMapping("/hopeItem.go")
	//사용자가 입력한 후 버튼을 누르면, uHI 메서드가 실행되어 사용자의 입력값을 세션에 저장
    public String userHopeItem(HttpServletRequest request) {
        String hItem1 = request.getParameter("hItem1");
        String hItem2 = request.getParameter("hItem2");

        HttpSession session = request.getSession();
        session.setAttribute("hItem1", hItem1);
        session.setAttribute("hItem2", hItem2);

        // 다음 뷰 또는 리디렉션 대상 반환
        return  "redirect:/sector/sectorRez2.my";
    }

}
