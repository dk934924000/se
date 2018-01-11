package com.NoviceTeam.SE.app;

import org.springframework.stereotype.Controller;

@Controller
public class MatchHelloController {
    private int i;

    public int getI(){
        return this.i;
    }

    public void setI(int i){
        this.i = i;
    }
}
