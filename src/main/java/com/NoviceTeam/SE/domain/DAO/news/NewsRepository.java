package com.NoviceTeam.SE.domain.DAO.news;

import com.NoviceTeam.SE.domain.model.News;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface NewsRepository extends JpaRepository<News, Long> {
    public Page<News> findAllByTextLike(String s, Pageable pageable);

    @Modifying
    @Query(value = "update newsinfo set visits=visits+1 where id = :id",nativeQuery = true)
    void add(@Param("id") Long id);

}
