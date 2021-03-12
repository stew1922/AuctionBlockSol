pragma solidity ^0.5.0;

//This contract will check to make sure a user meets certain criteria:
    //1 - Make sure the user has provided a valid address
    //2 - The user has enough funds to participate in the auction 
    //3 - The user has enough reputation to stake

contract Verification {
    //parameters that we will be verifying
    address user;
    uint balance;
    uint reputation;

    //verification state
    //default verification state is false
    mapping(address => bool) verified;

    //verification function
    function verify (address _user) public returns (bool) {
        user = _user;
        balance = msg.sender.balance;
    }

}