
pragma solidity >=0.4.0 <0.6.0;
import "./erc20Interface.sol";
contract ERC20Token is ERC20Interface {

    uint256 constant private MAX_UINT256 = 2**256 - 1;
    mapping (address => uint256) public balances;
    mapping (address => mapping (address => uint256)) public allowed;
    uint256 public totalSupply; // Total number of tokens
    string public name; // Descriptive name (i.e. For Dummies Token)
    uint8 public decimals; // How many decimals to use to display amounts
    string public symbol; // Short identifier for token (i.e. FDT)

    constructor(uint256 _initialAmount, string memory _tokenName, uint8 _decimalUnits, string memory _tokenSymbol) public {

        balances[msg.sender] = _initialAmount; // The creator owns all tokens
        totalSupply = _initialAmount; // Update total token supply
        name = _tokenName; // Token name
        decimals = _decimalUnits; // Number of decimals
        symbol = _tokenSymbol; // Token symbol
    }
    function transfer(address _to, uint256 _value) public returns (bool success) {

        require(_value >= 0,"Cannot transfer negative amount.");
        require(balances[msg.sender] >= _value,"Insufficient funds.");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        uint256 allowance = allowed[_from][msg.sender];
        require(balances[_from] >= _value && allowance >= _value,"Insufficient funds.");
        balances[_from] -= _value;
        balances[_to] += _value;
        if (allowance < MAX_UINT256) {
            allowed[_from][msg.sender] -= _value;
        }
        return true;
    }
    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }
    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        return true;
    }
    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }
    // function totalSupply() public view returns (uint256 totalSupply) {
    //     return totalSupply;
    // }
}