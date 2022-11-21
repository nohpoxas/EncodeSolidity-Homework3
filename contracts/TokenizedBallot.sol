// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

interface IMyToken {
    function getPastVotes(address account, uint256 blockNumber)
        external
        view
        returns (uint256);
}

contract TokenizedBallot {

    IMyToken public myToken;
    uint256 public targetBlockNumber;

    struct Proposal {
        bytes32 name;
        uint256 voteCount;
    }

    mapping(address => uint256) spentVotePower;

    Proposal[] public proposals;

    constructor(bytes32[] memory proposalNames, address _myToken, uint256 _targetBlockNumber) {
        myToken = IMyToken(_myToken);
        targetBlockNumber = _targetBlockNumber;
        for (uint256 i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({name: proposalNames[i], voteCount: 0}));
        }
    }

    function vote(uint256 proposal, uint256 amount) external {
        require(votePower(msg.sender) >= amount, "Not enough vote power");
        proposals[proposal].voteCount += amount;
        spentVotePower[msg.sender] += amount;
    }

    function votePower(address account) public view returns (uint256) {
        return myToken.getPastVotes(account, targetBlockNumber) - spentVotePower[account];
    }

    function winningProposal() public view returns (uint256 winningProposal_) {
        uint256 winningVoteCount = 0;
        for (uint256 p = 0; p < proposals.length; p++) {
            if (proposals[p].voteCount > winningVoteCount) {
                winningVoteCount = proposals[p].voteCount;
                winningProposal_ = p;
            }
        }
    }

    function winnerName() external view returns (bytes32 winnerName_) {
        winnerName_ = proposals[winningProposal()].name;
    }
}
