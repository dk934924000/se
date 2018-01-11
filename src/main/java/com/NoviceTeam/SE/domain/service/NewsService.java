package com.NoviceTeam.SE.domain.service;

import com.NoviceTeam.SE.domain.DAO.news.NewsRepository;
import com.NoviceTeam.SE.domain.model.News;
import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import java.io.IOException;
import java.util.Date;

@Service
@Transactional
public class NewsService {
    @Inject
    NewsRepository newsrepository;

    public void save(News news,MultipartFile file){


        Date now = new DateTime().toDate();
        if (news.getLocalDateTime() == null) {
            news.setLocalDateTime(now);
        }

        //Set the image
        try {
            news.setContent(file.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }

        news.setContentLength(file.getSize());
        news.setContentType(file.getContentType());
        news.setIname(file.getName());

        news.setVisits(0);

        newsrepository.save(news);
    }


    public Page<News> findAll(Pageable pageable){
        return newsrepository.findAll(pageable);
    }


    public News findOneById(Long id){
        return newsrepository.findOne(id);
    }


    public void add(Long id){
        newsrepository.add(id);
    };

}
