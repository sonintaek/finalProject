package com.kh.finalProject.sector.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.finalProject.sector.model.service.SectorService;
import com.kh.finalProject.sector.model.vo.Sector;

@Controller
@RequestMapping("/sector")
public class SectorController {

	@Autowired
	private SectorService sectorService;
	
	
	@GetMapping("/sectorRez2.my")
	public void sectorRez2(){}
	
	@GetMapping("/list")//섹터현황조회
	public String sectorList(Model model) {
		List<Sector> list = sectorService.getSectors();
		model.addAttribute("list",list);
		System.out.println(list);
		return "jsonView";
	}
	 @PostMapping("/radioRez.my")
	    public String radioRez(String radio, Model model, RedirectAttributes redirectAttr) {		 
	     Sector sector = sectorService.radioRez(radio);
	    model.addAttribute("radio", sector);
	     System.out.println(sector.getSectorName());
	     System.out.println(radio);
	     redirectAttr.addFlashAttribute("msg",sector.getSectorName()+"인 것을 확인하세요^ㅡ^");	    
	        return "/reservation/reserForm";
	    }
	
//	@PostMapping("/radioRez.my")
//	public String radioRez(Model model) {
//		List<Sector> radio = sectorService.radioRez();
//		model.addAttribute("radio", radio);
//		System.out.println(radio);
//		return "${pageContext.request.contextPath}/reservation/reserForm.do";
//	}
//	@PostMapping("/radioRez.my")	//예약섹터선택
//	public String radioRez(@RequestParam("radio") String sectorNo, Model model) {
//		String result = reservationMapper.getColumnValueBySectorNo(sectorNo);
//		model.addAttribute("result", result);
//		return "redirect:/reservation/reserForm.do";	
//	}
//	/* redirect: */
//	
	
	/*
	 * @PostMapping("/radioRez.my") public String radioRez(@RequestParam("radio")
	 * String[] sectorNos, Model model) { List<String> results = new ArrayList<>();
	 * for (String sectorNo : sectorNos) { String result =
	 * sectorMapper.getColumnValueBySectorNo(sectorNo); results.add(result); }
	 * model.addAttribute("results", results); return
	 * "${pageContext.request.contextPath}/reservation/reserForm.do"; // 결과를 렌더링할 뷰의
	 * 이름으로 변경해주세요. }
	 */

}