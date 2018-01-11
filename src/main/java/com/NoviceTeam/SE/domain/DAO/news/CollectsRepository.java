package com.NoviceTeam.SE.domain.DAO.news;

import com.NoviceTeam.SE.domain.model.Collects;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface CollectsRepository extends JpaRepository<Collects, Long> {
    public Collects findByNameAndOid(String name,Long oid);

    @Modifying
    @Query(value = "delete from collectinfo where oid=?1 and name=?2",nativeQuery = true)
    public void delete(Long oid,String name);
}
