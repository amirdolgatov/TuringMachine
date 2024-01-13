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

    char getCellSymbol(){
        return word[cellPionter];
    }

    void printWord(){
        std::string temp = " ";

        system("clear");

        std::cout << " ";

        for (int i = 0; i < word.size(); ++i) {
            if(i == cellPionter){
                std::cout << "|";
                temp.append({'|'});
            }
            else{
                std::cout << " ";
                temp.append({' '});
            }
        }
        std::cout << std::endl;

        std::cout << " " << word << std::endl;

        std::cout << temp << std::endl;
    }

    void printStart(){
        system("clear");
        std::cout << "|" << std::endl;
        std::cout << " " << word << std::endl;
        std::cout << "|" << std::endl;
    }

    void setSymbol(char c){
        word[cellPionter] = c;
    }

    void setWord(const std::string& str){
        word = str;
    }

private:

    uint32_t cellPionter = 0;
    std::string word;
};

#endif //TURING_INPUTWORD_H
