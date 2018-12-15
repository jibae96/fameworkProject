package kr.ac.hansung.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Subject;
import kr.ac.hansung.service.SubjectService;

@Controller
public class SubjectController {
	
	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping("/checkmycredit")
	public String showCheckMyCredidt(Model model) {
		return "checkmycredit";
	}
	
	@RequestMapping("/applysubject")
	public String showApplySubject(Model model) {
		
		model.addAttribute("subject", new Subject());
		
		return "applysubject";
	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model, @Valid Subject subject, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("===Form data does not validated");
			List<ObjectError> errors = result.getAllErrors();
			for(ObjectError error: errors)
				System.out.println(error.getDefaultMessage());
			return "applysubject";
		}
		System.out.println(subject);
		subjectService.insert(subject);
		return "home";
	}
	
	@RequestMapping("/findmycredit0")
	public String showMyCredit0(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "findmycredit0";
	}
	
	@RequestMapping("/findmycredit1")
	public String showMyCredit1(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "findmycredit1";
	}
	
	@RequestMapping("/findmycredit2")
	public String showMyCredit2(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "findmycredit2";
	}
	
	@RequestMapping("/findmycredit3")
	public String showMyCredit3(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "findmycredit3";
	}
	
	@RequestMapping("/findmycredit4")
	public String showMyCredit4(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "findmycredit4";
	}
	
	@RequestMapping("/findmycredit5")
	public String showMyCredit5(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "findmycredit5";
	}
	
	@RequestMapping("/checkapplysubject")
	public String showCheckApplySubject(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		return "checkapplysubject";
	}
}
