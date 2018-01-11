package com.NoviceTeam.SE.app;//package com.NoviceTeam.SE.app.news;

//import com.NoviceTeam.SE.domain.model.Image;
//import com.NoviceTeam.SE.domain.model.Story;
//import com.NoviceTeam.SE.domain.DAO.news.CategoryRepository;
//import com.NoviceTeam.SE.domain.DAO.news.ImageRepository;
//import com.NoviceTeam.SE.domain.DAO.news.StoryRepository;
//import com.NoviceTeam.SE.domain.service.news.DeleteUtility;
//import com.NoviceTeam.SE.domain.service.news.StoryUtility;
//import com.NoviceTeam.SE.domain.service.news.ValidationUtility;
import com.NoviceTeam.SE.domain.model.News;
import com.NoviceTeam.SE.domain.service.NewsService;
import com.NoviceTeam.SE.domain.service.UserService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefaults;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "news")

public class NewsController {
    @Inject
    protected NewsService newsService;

    @Inject
    protected UserService userService;


    @RequestMapping("all")
    public String hello(){
        return "news/allNews";
    }


    @RequestMapping(value = "news",method = RequestMethod.GET)
    public String news(@PageableDefaults(value = 100) Pageable  pageable, Model model){
        Page<News> page = newsService.findAll(pageable);
        List<News> many=page.getContent();
        ArrayList<News> manynews=new ArrayList<News>();
        ArrayList<News> top5=new ArrayList<News>();
        int s=many.size();
        int[] a=new int[many.size()];
        for(int i=0;i<s;i++){
            a[i]=0;
        }
        for(int i=0;i<s;i++){
            int max=0;
            for(int j=0;j<s;j++){
                if(a[j]==0) {
                    max = j;
                    continue;
                }
            }
            for(int j=1;j<s-i;j++){
                if(many.get(i).getVisits()>many.get(max).getVisits()&&a[i]!=1){
                    max=i;
                }
            }
            manynews.add(many.get(max));
            a[max]=1;
        }
        for(int i=0;i<5&&i<many.size();i++){
            top5.add(manynews.get(i));
        }
        model.addAttribute("top5",top5);
        model.addAttribute("newss",page);
        return "news/news";
    }

    @RequestMapping(params = "redirectToBrowse")
    public String redirectToUpdateForm(@RequestParam("id") Integer id,
                                       RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/news/story";
    }



    @Transactional
    @RequestMapping(value = "news", method = RequestMethod.POST)
    public String create(@RequestParam String heading, @RequestParam String lead, @RequestParam String story,
                         @RequestParam("file") MultipartFile file, @RequestParam String authors,
                         @RequestParam String categories, Model model){

        News news = new News();
        news.setHeading(heading);
        news.setLead(lead);
        news.setText(story);
        news.setAuthor(authors);

        newsService.save(news,file);
        return "redirect:/news/news";
    }

     @RequestMapping("story")
    public String one(@RequestParam("id") Long id,Model model){
        News news = newsService.findOneById(id);
        model.addAttribute("newsStory",news);
        newsService.add(id);
        return "news/story";
    }


    @RequestMapping(value = "img", method = RequestMethod.GET, produces =  "image/png")
    public ResponseEntity<byte[]> getImage(@RequestParam("id")Long id) {
//        @PathVariable Long id
        News news = newsService.findOneById(id);

        final HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.parseMediaType(news.getContentType()));
        headers.setContentLength(news.getContentLength());

        return new ResponseEntity<>(news.getContent(), headers, HttpStatus.CREATED);
    }
}
