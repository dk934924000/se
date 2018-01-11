package com.NoviceTeam.SE.domain.service;

import com.NoviceTeam.SE.domain.DAO.match.MatchRepository;
import com.NoviceTeam.SE.domain.ResourceNotFoundException;
import com.NoviceTeam.SE.domain.model.Match;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;

@Service
@Transactional
public class MatchService {

    @Inject
    protected com.NoviceTeam.SE.domain.DAO.match.MatchRepository MatchRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    public void save(Match match) {//这里是不是要保存全部

//        Date now = new DateTime().toDate();
//        if (match.getPtime() == null) {
//            match.setPtime(now);
//        }

        //match.setPtime(now);
        MatchRepository.save(match);
    }

    @Transactional(readOnly = true)
    public Match findOne(Integer id) {
        Match match = MatchRepository.findOne(id);
        if (match == null) {
            throw new ResourceNotFoundException("User [id=" + id
                    + "] is not found.");
        }
        return match;
    }

    @Transactional(readOnly = true)
    public Page<Match> findAll(Pageable pageable) {
        return MatchRepository.findAll(pageable);
    }

//    @Override
//    @Transactional(readOnly = true)
//    public Page<Match> findByNameLike(String name, Pageable pageable) {
//        String query = name; // TODO escape
//        Page<Match> page = MatchRepository.findByNameLike(query, pageable);
//        return page;
//    }

    public void delete(Match match) {
        MatchRepository.delete(match);
    }
}
