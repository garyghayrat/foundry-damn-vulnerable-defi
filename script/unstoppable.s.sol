// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/unstoppable/ReceiverUnstoppable.sol";
import "../src/unstoppable/UnstoppableLender.sol";
import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract UnstoppableScript is Script {
    ReceiverUnstoppable receiverUnstoppable;
    UnstoppableLender unstoppableLender;

    address deployer;
    address attacker;
    address someUser;

    uint256 TOKENS_IN_POOL = 1000000 ether;
    uint256 INITIAL_ATTACKER_TOKEN_BALANCE = 100 ether;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        receiverUnstoppable = new ReceiverUnstoppable;
        unstoppableLender = new UnstoppableLender;
    }
}
