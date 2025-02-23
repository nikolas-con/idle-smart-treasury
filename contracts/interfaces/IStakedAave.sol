// SPDX-License-Identifier: agpl-3.0
pragma solidity >=0.6.0 <=0.7.5;

interface IStakedAave {
  function stake(address to, uint256 amount) external;

  function redeem(address to, uint256 amount) external;

  function cooldown() external;

  function claimRewards(address to, uint256 amount) external returns (uint256);

  function stakersCooldowns(address staker) external view returns (uint256);
  
  function COOLDOWN_SECONDS() external view returns (uint256);

  function UNSTAKE_WINDOW() external view returns (uint256);

  function balanceOf(address) external view returns (uint256);

  function transfer(address recipient, uint256 amount) external returns (bool);
}