// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Struct {
    uint public memberCount;

    struct Member {
        address memberAddress;
        uint memberSince;
        uint totalRewardClaimed;
        string nickname;
    }

    Member[] membersArray;

    mapping(uint => Member) membersMapping;

    function addMembersArray(
        string memory _nickname
    ) public returns (Member memory) {
        membersArray.push(Member(msg.sender, block.timestamp, 0, _nickname));
        return membersArray[membersArray.length - 1];
    }

    function addMembersMapping(
        string memory _nickname
    ) public returns (Member memory) {
        memberCount++;
        membersMapping[memberCount] = Member(
            msg.sender,
            block.timestamp,
            0,
            _nickname
        );
        return membersMapping[memberCount - 1];
    }

    function getMember(uint _index) public view returns (Member memory) {
        return membersMapping[_index];
    }

    function getMembersArray() public view returns (Member[] memory) {
        return membersArray;
    }

    function getMembersMapping() public view returns (Member[] memory) {
        Member[] memory _members = new Member[](memberCount);
        for (uint i = 0; i < memberCount; i++) {
            _members[i] = membersMapping[i];
        }
        return _members;
    }
}
