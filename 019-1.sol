pragma solidity ^0.4.4;

contract CrowdFunding{
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
    mapping (uint => Campaign) campaigns;
}
