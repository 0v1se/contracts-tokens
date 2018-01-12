pragma solidity ^0.4.11;


import './ExternalTokenImpl.sol';


contract TestExternalToken is ExternalTokenImpl {
    address public minter;

    function ExternalTokenMock() public {
        minter = msg.sender;
    }

    function checkMinter() internal {
        require(msg.sender == minter);
    }
}