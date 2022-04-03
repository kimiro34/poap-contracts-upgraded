pragma solidity ^0.5.0;

import "../access/roles/WhitelistedRole.sol";

contract WhitelistedRoleMock is WhitelistedRole {
    constructor() public {
        WhitelistedRole.initialize(_msgSender());
    }

    function onlyWhitelistedMock() public view onlyWhitelisted {
        // solhint-disable-previous-line no-empty-blocks
    }
}
