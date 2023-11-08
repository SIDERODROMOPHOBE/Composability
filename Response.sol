pragma solidity ^0.8.21;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
//import "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IUniswapV2Router02{
	function swapExactTokensForTokens(
    uint amountIn,         // The exact amount of the input token to be swapped
    uint amountOutMin,     // The minimum amount of the output token you expect to receive
    address[] calldata path, // An array of token addresses that represent the path for the swap
    address to,            // The address that will receive the output tokens
    uint deadline          // The deadline by which the transaction must be executed
) external returns (uint[] memory amounts);

}


contract Response is ERC20 {

//address(this) = 0x13C2F2AAA40dEDe827C9e8616Ea489a3F25F62b6


    address public EvaluatorC = 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE;
    address public RewardC = 0x56822085cf7C15219f6dC404Ba24749f08f34173;
    address public Uniswep =0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45;

    IUniswapV2Router02 public uniswapRouter;


    


    constructor() ERC20("ResponseToken2", "RPT2") 
    {

        uniswapRouter = IUniswapV2Router02(0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45);

        uint256 multiplicator = 10 ** 17;

        _mint(msg.sender, 100000000000*multiplicator);
        _mint(address(this), 100000000000000*multiplicator);


        _approve(address(this),EvaluatorC,1000000000*multiplicator);
    }

    function GiveMoreMoneyToAymeric() public
    {
        _mint(EvaluatorC,20000000);
    }

    function Swep_Uniswep() public
    {
        _approve(address(this), Uniswep, 30);

        address[] memory path = new address[](2);
        path[0] = address(EvaluatorC); // Input token address
        path[1] = address(RewardC);

        uniswapRouter.swapExactTokensForTokens(30,0,path,address(this),block.timestamp);
    }


}
