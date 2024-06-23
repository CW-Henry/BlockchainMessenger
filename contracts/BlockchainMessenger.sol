// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.15;

contract BlockchainMessenger {

    uint public changeCounter;

    address public owner;

    string public message;

    constructor() {
        owner = msg.sender;
    }

    function updateMessage(string memory _newMessage) public {
        if (msg.sender == owner) {
            message = _newMessage;
            changeCounter++;
        }
    }

}