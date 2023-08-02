# Metacrafters_Challenge
## Creating My First Token

This Solidity program is a simple guide to creating an ERC20 token and deploying it to different testnets.

### Description

This program introduces a basic smart contract written in Solidity, a programming language designed for Ethereum blockchain smart contract development. The contract focuses on two primary functions:

- Mint Function (Token minting)
- Burn Function (Token burning)

### Execution Instructions

To execute this program, you can utilize Remix, an online Solidity Integrated Development Environment (IDE). Follow these steps:

1. Visit the Remix website: [https://remix.ethereum.org/](https://remix.ethereum.org/).
2. On the Remix website, initiate a new file by clicking on the "+" icon found in the left-hand sidebar. Save the file with a .sol extension (e.g., Token.sol).
3. Copy and paste the provided code snippet into the newly created file:

```solidity
pragma solidity ^0.8.4;

contract MyToken {
    string public tokenName = "ARPIT";
    string public tokenAbbreviation = "APT";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}




To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4 or above" (or another compatible version), and then click on the "Compile Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "Token" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and interact with the blue and red buttons. You can read and write from the contract also. 

## Authors

ARPIT DWEDI


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
