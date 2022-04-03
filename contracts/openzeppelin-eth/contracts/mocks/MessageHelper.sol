pragma solidity ^0.5.0;


contract MessageHelper {

    event Show(bytes32 b32, uint256 number, string text);
    event Buy(bytes32 b32, uint256 number, string text, uint256 value);

    function showMessage(
        bytes32 _message,
        uint256 _number,
        string memory _text
    )
        public
        returns (bool)
    {
        emit Show(_message, _number, _text);
        return true;
    }

    function buyMessage(
        bytes32 _message,
        uint256 _number,
        string memory _text
    )
        public
        payable
        returns (bool)
    {
        emit Buy(
            _message,
            _number,
            _text,
            msg.value);
        return true;
    }

    function fail() public {
        require(false);
    }

    function call(address _to, bytes memory _data) public returns (bool) {
        // solhint-disable-next-line avoid-low-level-calls
        (bool success,) = _to.call(_data);
        if (success)
            return true;
        else
            return false;
    }

}
