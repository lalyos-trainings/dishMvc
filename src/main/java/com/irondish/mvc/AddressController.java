package com.irondish.mvc;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/address/*")
@Controller
public class AddressController {

	@Autowired
	AddressRepo repo;
	
	@Autowired
	IdGenerator generator;
	
	@RequestMapping("list")
	public String list(Model model, HttpSession session) {
		
		addModelAttributes(model);
		return "addressList";
	}
	
	@RequestMapping("edit")
	public String edit(@RequestParam Long id, Model model) {
		Address address = repo.findById(id);
		addModelAttributes(model, address);
		return "addressList";
	}


	@RequestMapping("select")
	public String select(@RequestParam Long id, Model model) {
		repo.setSelected(id);
		addModelAttributes(model);
		return "addressList";
	}

	@RequestMapping("delete")
	public String delete(@RequestParam Long id, Model model) {
		repo.delete(id);
		addModelAttributes(model);
		return "addressList";
	}

	@RequestMapping("add")
	public String add(@ModelAttribute Address address, BindingResult binding, Model model) {
		
		if (address.getCity() == null || address.getCity().trim().length() < 1) {
			binding.addError(new FieldError("address", "city", "required"));
		}

		if (address.getZip() == null || address.getZip().trim().length() < 1) {
			binding.addError(new FieldError("address", "zip", "required"));
		}

		if (address.getStreet() == null || address.getStreet().trim().length() < 1) {
			binding.addError(new FieldError("address", "street", "required"));
		}

		if (! binding.hasErrors()) {
			address.setId(generator.nextId("Address"));
			repo.add(address);
			addModelAttributes(model, address);
		} else {
			addModelAttributes(model);			
		}
		return "addressList";
	}


	private void addModelAttributes(Model model) {
		addModelAttributes(model, new Address());
	}
	private void addModelAttributes(Model model, Address address) {
		
		model.addAttribute("address", address);
		model.addAttribute("addressList", repo.getAllAddress());
		model.addAttribute("selectedAddressId",repo.getSelectedId());
		model.addAttribute("selectedAddress",repo.getSelected());
	}

}
