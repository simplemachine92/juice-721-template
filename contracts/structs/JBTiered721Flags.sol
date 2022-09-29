// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/** 
  @member lockReservedTokenChanges A flag indicating if reserved tokens can change over time by adding new tiers with a reserved rate.
  @member lockVotingUnitChanges A flag indicating if voting unit spreads can change over time by adding new tiers with voting units.
  @member lockPricingResolverChanges A flag indicating if the provided pricing resolver can change by the owner.
*/
struct JBTiered721Flags {
  bool lockReservedTokenChanges;
  bool lockVotingUnitChanges;
  bool lockPricingResolverChanges;
}
