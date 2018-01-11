package com.NoviceTeam.SE.domain.DAO.match;

import com.NoviceTeam.SE.domain.model.Match;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MatchRepository extends JpaRepository<Match, Integer> {

}
