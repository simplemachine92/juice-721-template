// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/** 
  @custom:member delegatee The account to delegate tier voting units to.
  @custom:member tierId The ID of the tier to delegate voting units for.
*/
struct JBTiered721SetTierDelegatesData {
  address delegatee;
  uint256 tierId;
}
