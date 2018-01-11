package com.NoviceTeam.SE.app;

import com.NoviceTeam.SE.domain.model.KeyPoint;
import com.NoviceTeam.SE.domain.service.KeyService;
import com.NoviceTeam.SE.domain.service.UserService;
import org.dozer.Mapper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.validation.groups.Default;

@Controller
@RequestMapping("keypoint")
public class KeyPointController {
    @Inject
    protected KeyService keyService;

    @Inject
    protected Mapper beanMapper;

    @Inject
    UserService userService;

    @ModelAttribute
    public KeyPointForm setUpKeyPointForm() {
        return new KeyPointForm();
    }

    @RequestMapping("/keypoint/greeting")
    public String greeting(@RequestParam(value="name", required=false) String name, Model model) {
        return "ppts/list";
    }

    @RequestMapping(value = "create", params = "form", method = RequestMethod.GET)
    public String createForm(KeyPointForm form) {
        return "keypoint/createForm";
    }

    @RequestMapping(value = "create", params = "confirm", method = RequestMethod.POST)
    public String createConfirm(@Validated({ Default.class, KeyPointForm.KeyPointCreateGroup.class })
                                            KeyPointForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "keypoint/createForm";
        }
        return "keypoint/createConfirm";
    }

    @RequestMapping(value = "show", method = RequestMethod.POST)
    public String showConfirm(@RequestParam("id") Integer id, KeyPointForm form,
                              Model model) {

        KeyPoint kp = keyService.findOne(id);
        KeyPointForm keyPointForm = new KeyPointForm();
        keyPointForm.setId(id);
        keyPointForm.setDescription(kp.getDescription());
        keyPointForm.setName(kp.getName());
        model.addAttribute(kp);
        return "keypoint/show";
    }


    @RequestMapping(value = "create", params = "redo", method = RequestMethod.POST)
    public String createRedo(KeyPointForm form) {
        return "keypoint/createForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            @Validated({ Default.class, KeyPointForm.KeyPointCreateGroup.class }) KeyPointForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "keypoint/createForm";
        }
        KeyPoint keypoint = beanMapper.map(form, KeyPoint.class);
        keypoint.setSolved(0);
        keypoint.setAgreed(1);

        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication() .getPrincipal();
        String name = userDetails.getUsername();
        keypoint.setAsker(name);
        keyService.save(keypoint);

        return "redirect:/keypoint/create?complete";
    }

    @RequestMapping(value = "create", params = "complete", method = RequestMethod.GET)
    public String createComplete() {
        return "keypoint/createComplete";
    }

    // update flow

    @RequestMapping(value = "update", params = "form", method = RequestMethod.GET)
    public String updateForm(@RequestParam("id") Integer id, KeyPointForm form,
            Model model) {

        KeyPoint keypoint = keyService.findOne(id);
        beanMapper.map(keypoint, form, "userExcludePassword");

        model.addAttribute(keypoint);

        return "keypoint/updateForm";
    }

    @RequestMapping(value = "update", params = "confirm", method = RequestMethod.POST)
    public String updateConfirm(@Validated({ Default.class,
            KeyPointForm.KeyPointUpdateGroup.class }) KeyPointForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "keypoint/updateForm";
        }
        return "keypoint/updateConfirm";
    }

    @RequestMapping(value = "update", params = "redo", method = RequestMethod.POST)
    public String updateRedo(@RequestParam("id") Integer id, KeyPointForm form,
            Model model) {

        // reset password

        return "keypoint/updateForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(
            @Validated({ Default.class, KeyPointForm.KeyPointUpdateGroup.class }) KeyPointForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "keypoint/updateForm";
        }

        KeyPoint keypoint = keyService.findOne(form.getId());
        beanMapper.map(form, keypoint);
        keyService.save(keypoint);

        return "redirect:/keypoint/update?complete";
    }

    @RequestMapping(value = "update", params = "complete", method = RequestMethod.GET)
    public String updateComplete() {
        return "keypoint/updateComplete";
    }

    // delete flow

    @RequestMapping(value = "delete", params = "form", method = RequestMethod.GET)
    public String deleteForm(@RequestParam("id") Integer id, KeyPointForm form,
            Model model) {

        KeyPoint keypoint = keyService.findOne(id);
        beanMapper.map(keypoint, form);

        model.addAttribute(keypoint);
        return "keypoint/deleteForm";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(
            @Validated({ Default.class, KeyPointForm.KeyPointDeleteGroup.class }) KeyPointForm form,
            BindingResult result, RedirectAttributes attr) {
        if (result.hasErrors()) {
            attr.addFlashAttribute("errorMessage", "Illegal Access!");
            return "redirect:/keypoint/list";
        }

        KeyPoint keypoint = keyService.findOne(form.getId());
        beanMapper.map(form, keypoint);

        keyService.delete(keypoint);
        return "redirect:/keypoint/delete?complete";
    }

    @RequestMapping(value = "delete", params = "complete")
    public String deleteComplete() {
        return "keypoint/deleteComplete";
    }

    @RequestMapping(value = { "create", "update", "delete" }, params = "redirectToList")
    public String redirectToList() {
        return "redirect:/keypoint/list";
    }
}
