package com.NoviceTeam.SE.domain.service;

import com.NoviceTeam.SE.domain.DAO.key.KeyPointRepository;
import com.NoviceTeam.SE.domain.ResourceNotFoundException;
import com.NoviceTeam.SE.domain.model.KeyPoint;
import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.Date;

@Service
@Transactional
public class KeyService {
    @Inject
    protected KeyPointRepository keyPointRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    public void save(KeyPoint keyPoint) {
        Date now = new DateTime().toDate();
        if (keyPoint.getCreatedAt() == null) {
            keyPoint.setCreatedAt(now);
        }

        keyPoint.setUpdatedAt(now);

        keyPoint.setAgreed(1);

        keyPointRepository.save(keyPoint);
    }

    @Transactional(readOnly = true)
    public KeyPoint findOne(Integer id) {
        KeyPoint keyPoint = keyPointRepository.findOne(id);
        if (keyPoint == null) {
            throw new ResourceNotFoundException("KeyPoint [id=" + id
                    + "] is not found.");
        }
        return keyPoint;
    }

    @Transactional()
    public void add(Integer id){
        KeyPoint keyPoint = keyPointRepository.findOne(id);
        if (keyPoint == null) {
            throw new ResourceNotFoundException("KeyPoint [id=" + id
                    + "] is not found.");
        }
        keyPointRepository.add(id);
    }

    @Transactional(readOnly = true)
    public Page<KeyPoint> findAll(Pageable pageable) {
        Page<KeyPoint> page = keyPointRepository.findAll(pageable);
        return page;
    }

    @Transactional(readOnly = true)
    public Page<KeyPoint> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<KeyPoint> page = keyPointRepository.findByNameLike(query, pageable);
        return page;
    }

    public void delete(KeyPoint keyPoint) {
        keyPointRepository.delete(keyPoint);
    }
}
