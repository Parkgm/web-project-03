package kr.ac.dit;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController4 {
	@RequestMapping("urlE")
	public String urlE() {

		return "redirect:/urlF";
		
	}
	
	@RequestMapping("urlF")
	public void urlF() {
		
	}
}