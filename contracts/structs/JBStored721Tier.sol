// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
  @member price The minimum contribution to qualify for this tier.
  @member remainingQuantity Remaining number of tokens in this tier. Together with idCeiling this enables for consecutive, increasing token ids to be issued to contributors.
  @member initialQuantity The initial `remainingAllowance` value when the tier was set.
  @member votingUnits The amount of voting significance to give this tier compared to others.
  @member lockedUntil The time up to which this tier cannot be removed. The application interprets this value as days added to the timestamp for 1672531200 (Jan 1, 2023 00:00 UTC), allowing for storage in 24 bits. 
  @member reservedRate The number of minted tokens needed in the tier to allow for minting another reserved token.
  @member category A category to group NFT tiers by.
  @member royaltyRate The percentage of each of the NFT sales that should be routed to the royalty beneficiary. Out of MAX_ROYALTY_RATE.
  @member allowManualMint A flag indicating if the contract's owner can mint from this tier on demand.
  @member transfersPausable A flag indicating if transfers from this tier can be pausable. 
  @member usePriceAsVotingUnits A flag indicating if the price should be used as the voting units.
*/
struct JBStored721Tier {
  uint88 price;
  uint40 remainingQuantity;
  uint40 initialQuantity;
  uint32 votingUnits;
  uint16 lockedUntil;
  uint16 reservedRate;
  uint16 category;
  uint8 royaltyRate;
  bool allowManualMint;
  bool transfersPausable;
  bool usePriceAsVotingUnits;
}
