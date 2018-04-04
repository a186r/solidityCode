pragma solidity ^0.4.4;

contract test {
    enum ActionChoices { GoLeft,GoRight,GoStraight,SitStill }
    ActionCHoices _choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight(ActionChoices choice) public {
        _choice = choice;
    }

    function getChoice() constant public returns (ActionChoices){
        return _choice;
    }

    function getDefaultChoice() pure public returns (uint){
        return uint(defaultChoice);
    }
}
