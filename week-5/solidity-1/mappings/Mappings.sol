// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Mapping {
    mapping(address => bool) public isMember;
    mapping(uint => string) public proposals;
    mapping(address => mapping(uint => bool)) hasVoted;

    function addMember() public {
        isMember[msg.sender] = true;
    }

    function getMember(address _member) public view returns (bool) {
        return isMember[_member];
    }

    function removeMember() public {
        isMember[msg.sender] = false;
    }

    function setProposal(uint _id, string memory _name) public {
        proposals[_id] = _name;
    }

    function castVote(uint _id) public {
        hasVoted[msg.sender][_id] = true;
    }

    function deleteMember() public {
        delete isMember[msg.sender];
    }
}
