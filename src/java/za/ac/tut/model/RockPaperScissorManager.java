/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model;

/**
 *
 * @author hp
 */
public class RockPaperScissorManager implements RockPaperScissorInterface {

    @Override
    public char generateSign() {
        char [] signs = {'R', 'P', 'S'};
        int index = (int)Math.floor(Math.random()*3);
        return signs[index];
    }

    @Override
    public String determineOutcome(char playerSign, char computerSign) {
        String outcome = " ";
        
        if(playerSign == 'R' && computerSign =='P'){
            outcome = "Rock wraps paper. player wins";
        }else if(playerSign == 'R' && computerSign =='S'){
            outcome = "Rock crashes scissor. player wins";
        }else if(playerSign == 'P' && computerSign =='R'){
            outcome = "Paper wraps rock. player wins";
        }else if(playerSign == 'P' && computerSign =='S'){
            outcome = "Scissor cuts paper. computer wins";
        }else if(playerSign == 'S' && computerSign =='R'){
            outcome = "Rock crashes scissor. computer wins";
        }else if(playerSign == 'S' && computerSign =='P'){
            outcome = "Scissor cuts paper. player wins";
        }else{
            outcome = "Tie";
        }
        return outcome;
    }
    
}
