pragma solidity ^0.4.4;

contract CrowFunding{
    struct Funder{
        address addr;
        uint amount;
    }

    struct Campaign{
        address beneficiary;
        uint fundingGoal;
        uint numFunders;
        uint amount;
        mapping(uint => Funder) funders;
    }

    uint numCampaigns;
    mapping(uint => Campaign) campaigns;

    function newCampaign(address beneficiary,uint goal) public returns (uint campaignID){
        campaignID = numCampaigns++;

        campaigns[campaignID] = Campaign(beneficiary,goal,0,0);
    }

    function contribute(uint campaignID) public payable{
        Campaign storage c = campaigns[campaignID];

        c.funders[c.numFunders++] = Funder({addr:msg.sender,amount:msg.value});
        c.amount += msg.value;
    }

    function checkGoalReached(uint campaignID) public returns(bool reached){
        Campaign storage c = campaigns[campaignID];
        if(c.amount < c.fundingGoal)
            return false;
        uint amount = c.amount;
        c.amount = 0;
        c.beneficiary.transfer(amount);
        return true;
}
