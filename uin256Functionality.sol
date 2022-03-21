// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20FlashMintUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @custom:security-contact squeakiedork@gmail.com
contract FerQuerenSea is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, OwnableUpgradeable, ERC20FlashMintUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize() initializer public {
        __ERC20_init("FerQuerenSea", "FQS");
        __ERC20Burnable_init();
        __Ownable_init();
        __ERC20FlashMint_init();

        _mint(msg.sender, 100000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

************************************************************************************
pragma solidity ^0.5.0;

import "@openzeppelin/contracts-ethereum-package/contracts/GSN/GSNRecipient.sol";
import "@openzeppelin/upgrades/contracts/Initializable.sol";
import "@0x/contracts-utils/contracts/src/LibBytes.sol";

contract GSNFaucet is Initializable, GSNRecipient {
  using LibBytes for bytes;

  uint256 public constant NOT_ENOUGH_WORK = 1;
  uint256 public constant GRANT = 1e17;

  uint256 private difficulty;
  uint256 private lastNonce = 0;

  function initialize(uint256 _difficulty) public initializer {
    GSNRecipient.initialize();
    difficulty = _difficulty;
  }

  function getLastNonce() public view returns (uint256) {
    return lastNonce;
  }

  function getDifficulty() public view returns (uint256) {
    return difficulty;
  }

  function checkProof(address sender, uint256 nonce) internal view returns (bool) {
    bytes32 digest = keccak256(abi.encodePacked(sender, lastNonce, nonce, address(this)));
    return (uint256(digest) < getDifficulty());
  }

  function _preRelayedCall(bytes memory context) internal returns (bytes32) {
    (uint256 proofNonce) = abi.decode(context, (uint256));
    lastNonce = proofNonce;
    return "";
  }

  function gimme(uint256) external {
    require(msg.sender == getHubAddr(), "Must be called from RelayHub");
    address payable requestor = address(uint160(_msgSender()));
    requestor.transfer(GRANT);
  }

  function acceptRelayedCall(
    address,
    address from,
    bytes calldata encodedFunction,
    uint256,
    uint256,
    uint256,
    uint256,
    bytes calldata,
    uint256
  ) external view returns (uint256, bytes memory) {
    uint256 proofNonce = encodedFunction.readUint256(4);
    if (checkProof(from, proofNonce)) {
      return _approveRelayedCall(abi.encodePacked(proofNonce));
    } else {
      return _rejectRelayedCall(NOT_ENOUGH_WORK);
    }
  }
}


function getRecipientBalance() public view returns (uint) {
    return IRelayHub(getHubAddr()).balanceOf(address(this));
  }

  function() payable external { }
}
