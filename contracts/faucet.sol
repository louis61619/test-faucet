//SPDX-License-Identifier: MIT
pragma solidity >=0.4.19;

contract Faucet {
    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 100000000000000000);

        // msg.sender.transfer(withdraw_amount);
        payable(msg.sender).transfer(withdraw_amount);
    }

    fallback() external payable {}

    receive() external payable {
        // 
        // custom function code
    }
}