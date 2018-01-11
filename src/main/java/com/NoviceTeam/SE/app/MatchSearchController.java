package com.NoviceTeam.SE.app;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefaults;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.NoviceTeam.SE.domain.model.Match;
import com.NoviceTeam.SE.domain.service.MatchService;

@Controller
@RequestMapping("match")
public class MatchSearchController {
    @Inject
    protected MatchService matchService;

    @ModelAttribute
    public MatchSearchForm setUpForm() {
        return new MatchSearchForm();
    }

    @RequestMapping("list")
    public String list(@PageableDefaults Pageable pageable, Model model) {
        Page<Match> page = matchService.findAll(pageable);
        model.addAttribute("page", page);
        return "match/list";
    }

    @RequestMapping("search")
    public String search(@Valid MatchSearchForm form, BindingResult result,
                         @PageableDefaults Pageable pageable, Model model) {
        if (result.hasErrors()) {
            return "match/list";
        }

        String name = form.getName();
        String query = (StringUtils.hasText(name) ? name : "") + "%";
//        Page<Match> page = matchService.findByNameLike(query, pageable);
//        model.addAttribute("page", page);
        return "match/list";
    }

    @RequestMapping(params = "redirectToUpdate")
    public String redirectToUpdateForm(@RequestParam("id") Integer id,
                                       RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/match/update?form";
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDeleteForm(@RequestParam("id") Integer id,
                                       RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/match/delete?form";
    }
}
