package com.NoviceTeam.SE.domain.DAO.user;

import com.NoviceTeam.SE.domain.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Integer> {
    @Query(value = "SELECT x FROM User x WHERE x.name LIKE :name% ORDER BY x.id", countQuery = "SELECT COUNT(x) FROM User x WHERE x.name LIKE :name%")
    Page<User> findByNameLike(@Param("name") String name, Pageable page);

    @Query(value = "select * from puserinfo where user_name = ?1",nativeQuery = true)
    User findByUserName(String username);

    User findByEmail(String email);
}
