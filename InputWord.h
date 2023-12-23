//
// Created by amir on 20.12.23.
//

#ifndef TURING_INPUTWORD_H
#define TURING_INPUTWORD_H

#include <stdint.h>
#include <string>
#include <iostream>

class InputWord{
public:

    void stepRight(){
        ++cellPionter;
    }

    void stepLeft(){
        if(cellPionter > 0)
            cellPionter--;
    }

    char visibleCell(){
        return word[cellPionter];
    }

    void printWord(){
        std::cout << word << std::endl;
    }

    void setSymbol(char c){
        word[cellPionter] = c;
    }

private:

    uint32_t cellPionter = 0;
    std::string word;
};

#endif //TURING_INPUTWORD_H
