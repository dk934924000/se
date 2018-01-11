package com.NoviceTeam.SE.app;

import javax.inject.Inject;
import javax.validation.groups.Default;

import org.dozer.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.NoviceTeam.SE.domain.model.Match;
import com.NoviceTeam.SE.domain.service.MatchService;

@Controller
@RequestMapping("match")
public class MatchController {
    @Inject
    protected MatchService matchService;

    @Inject
    protected Mapper beanMapper;

    @ModelAttribute
    public MatchForm setUpMatchForm() {
        return new MatchForm();
    }

    // create flow

    @RequestMapping(value = "create", params = "form", method = RequestMethod.GET)
    public String createForm(MatchForm form) {
        return "match/createForm";
    }

    @RequestMapping(value = "create", params = "confirm", method = RequestMethod.POST)
    public String createConfirm(@Validated({ Default.class,
            MatchForm.MatchCreateGroup.class }) MatchForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "match/createForm";
        }
        return "match/createConfirm";
    }

    @RequestMapping(value = "create", params = "redo", method = RequestMethod.POST)
    public String createRedo(MatchForm form) {
        // reset password

        return "match/createForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            @Validated({ Default.class, MatchForm.MatchCreateGroup.class }) MatchForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "match/createForm";
        }

        Match match = beanMapper.map(form, Match.class);
        matchService.save(match);

        return "redirect:/match/create?complete";
    }

    @RequestMapping(value = "create", params = "complete", method = RequestMethod.GET)
    public String createComplete() {
        return "match/createComplete";
    }

    @RequestMapping(value = "update", params = "form", method = RequestMethod.GET)
    public String updateForm(@RequestParam("id") Integer id, MatchForm form,
                             Model model) {

        Match match = matchService.findOne(id);
        beanMapper.map(match, form);

        model.addAttribute(match);

        return "match/updateForm";
    }

    @RequestMapping(value = "update", params = "confirm", method = RequestMethod.POST)
    public String updateConfirm(@Validated({ Default.class,
            MatchForm.MatchUpdateGroup.class }) MatchForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "match/updateForm";
        }
        return "match/updateConfirm";
    }

    @RequestMapping(value = "update", params = "redo", method = RequestMethod.POST)
    public String updateRedo(@RequestParam("id") Integer id, MatchForm form,
                             Model model) {
        return "match/updateForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(
            @Validated({ Default.class, MatchForm.MatchUpdateGroup.class }) MatchForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "match/updateForm";
        }

        Match match = matchService.findOne(form.getId());
        beanMapper.map(form, match);
        matchService.save(match);

        return "redirect:/match/update?complete";
    }

    @RequestMapping(value = "update", params = "complete", method = RequestMethod.GET)
    public String updateComplete() {
        return "match/updateComplete";
    }

    // delete flow

    @RequestMapping(value = "delete", params = "form", method = RequestMethod.GET)
    public String deleteForm(@RequestParam("id") Integer id, MatchForm form,
                             Model model) {

        Match match = matchService.findOne(id);
        beanMapper.map(match, form);

        model.addAttribute(match);
        return "match/deleteForm";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(
            @Validated({ Default.class, MatchForm.MatchDeleteGroup.class }) MatchForm form,
            BindingResult result, RedirectAttributes attr) {
        if (result.hasErrors()) {
            attr.addFlashAttribute("errorMessage", "Illegal Access!");
            return "redirect:/match/list";
        }

        Match match = matchService.findOne(form.getId());
        beanMapper.map(form, match);

        matchService.delete(match);
        return "redirect:/match/delete?complete";
    }

    @RequestMapping(value = "delete", params = "complete")
    public String deleteComplete() {
        return "match/deleteComplete";
    }

    @RequestMapping(value = { "create", "update", "delete" }, params = "redirectToList")
    public String redirectToList() {
        return "redirect:/match/list";
    }
}
