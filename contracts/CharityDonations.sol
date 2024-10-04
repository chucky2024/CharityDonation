// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract CharityManagement {
    struct Donation {
        uint256 amount;
        address donor;
        string message;
    }

    mapping(bytes32 => Donation[]) public donations;

    event DonationReceived(bytes32 indexed charityId, uint256 amount, address indexed donor, string message);

    function donate(bytes32 charityId, string memory message) public payable {
        require(msg.value > 0, "Donation must be greater than zero");
        donations[charityId].push(Donation(msg.value, msg.sender, message));
        emit DonationReceived(charityId, msg.value, msg.sender, message);
    }

    function getDonations(bytes32 charityId) public view returns (Donation[] memory) {
        return donations[charityId];
    }
}
