#include <iostream>
#include <map>
#include <unordered_map>
#include <vector>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>
#include <signal.h>

#include "InputWord.h"

enum struct Motion{
    Left = 'L',
    Right = 'R',
    Stop = 'N'
};

struct ConfigurationTM{
    uint32_t state;
    char symbol;
};

struct Command{
    char newSymbol;
    char motion;
    uint32_t state;
};


class CommandStorage{
public:

    static std::vector<std::string> split(std::string& str){
        std::vector<std::string> splittedStrings;
        std::string temp;
        auto start = str.begin();

        for (auto iterator = str.begin(); iterator != str.end(); iterator++) {
            if (*iterator == ',') {
                for (; start != iterator; temp.push_back(*start), start++) { ; }
                start++;
                splittedStrings.emplace_back(temp);
                temp.clear();
            }
        }

        for (; start != str.end(); temp.push_back(*start), start++) { ; }
        splittedStrings.emplace_back(temp);

        return splittedStrings;
    }



    void strProcess(std::vector<std::string> commands){

        std::pair<std::pair<uint32_t, char>, Command> temp;

        uint32_t state = stoul(commands[0]);
        char symbol = *(commands[1].c_str());

        if(*(commands[3].c_str()) != '>' && *(commands[3].c_str()) != '<' && *(commands[3].c_str()) != '|') {
            std::cout << "Wrong command!";
            return;
        }

        Command command{
                .newSymbol = *(commands[2].c_str()),
                .motion = *(commands[3].c_str()),
                .state = (uint32_t)stoul(commands[4])
        };

        temp.first = {state, symbol};
        temp.second = command;
        instructionsContainer.emplace(temp);

    }

    ///* Ввод команд программы для машины Тьюринга
    void inputTuringProgramm(){
        std::cout << "Enter programm (ex: [1,a,b,>,1]" << std::endl;
        std::cout << " > - move right" << std::endl;
        std::cout << " < - move left" << std::endl;
        std::cout << " | - stop" << std::endl;
        while (true){
            std::string temp;
            std::vector<std::string> splittedStrings;
            getline(std::cin, temp);
            splittedStrings = split(temp);
            if(splittedStrings.size() == 5) {                   // there must be 5 elements is the instruction
                strVector.emplace_back(splittedStrings);
            }
            else if(splittedStrings.size() == 1){               // one element means it's the end of commands input
                std::cout << "Stop data entry" << std::endl;
                break;
            }
            else{
                std::cout << "Incorrect instruction!" << std::endl;
            }
        }
    }


    void buildTMtable(){
        for (auto& instruction: strVector) {
            strProcess(instruction);
        }
    }

    Command getInstructions(ConfigurationTM& config){
        
    }

private:

    std::map<std::pair<uint32_t, char>, Command> instructionsContainer;
    std::vector<std::vector<std::string>> strVector;
};

class TuringMachine{
public:

void start(){

    ConfigurationTM config{.state = 0, .symbol = ' '};

    auto& [state, symbol] = config;

    while (true){
        symbol = word.getCellSymbol();
        instructions.
    }
}

    CommandStorage instructions;
    InputWord word;

};




int main() {

    std::string temp;
    int i = 0;
    std::vector<std::vector<std::string>> container;

    for (auto& iterator: container) {
        for(auto& it: iterator) {
            std::cout << it;
        }
        std::cout << std::endl;
    }

    InputWord inputWord;
    inputWord.setWord("testword");
    inputWord.printStart();
    while (i++ <= 20){
        if (i < 11){
            inputWord.stepRight();
        }
        if (i >= 11){
            inputWord.stepLeft();
        }
        inputWord.printWord();
        usleep(100000);
    }
    return 0;
}
