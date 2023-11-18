# Tennisball Smart Contract

## Overview

Welcome to the Tennisball smart contract! This Ethereum-based contract enables the tracking of tennis balls for various addresses. Users can modify their tennis ball inventory by adding or subtracting tennis balls, and the contract maintains a record of the quantity for each address.

## Contract Details

### `balltype`, `Ballcode`, and `No_of_balls`

- `balltype`: A string indicating the type of ball, set to "Tennis Ball."
- `Ballcode`: A string providing a code for the tennis ball, set to "TB."
- `No_of_balls`: An integer representing the total count of tennis balls. This value is adjusted based on user interactions.

### `blc` Mapping

- `blc`: A mapping associating Ethereum addresses with the respective number of tennis balls owned by each address.

### `addition(address _address, uint _units)`

Adds tennis balls to the specified address's inventory.

- Parameters:
  - `_address`: The Ethereum address to which tennis balls will be added.
  - `_units`: The number of tennis balls to add.

### `subtraction(address _address, uint _units)`

Subtracts tennis balls from the specified address's inventory.

- Parameters:
  - `_address`: The Ethereum address from which tennis balls will be subtracted.
  - `_units`: The number of tennis balls to subtract.

## Usage Examples

```solidity
// Deploy the Tennisball contract
Tennisball tennisball = new Tennisball();

// Add tennis balls to an address
tennisball.addition(msg.sender, 5);

// Subtract tennis balls from an address
tennisball.subtraction(msg.sender, 2);
```

## Security Measures

- The `addition` function validates that the specified number of tennis balls to add is greater than zero.
- The `subtraction` function checks whether there are sufficient tennis balls to subtract, reverting with an error message if not.

## Contribution Guidelines

Feel free to open issues or submit pull requests for enhancements or suggestions.

## Acknowledgments

This contract serves as a moderate example for managing tennis ball inventory within a decentralized application.

## Contact Information

Lakkineni Shashi Preetham

apashyamkirikiri4321@gmail.com


