const supplyChain = artifacts.require("supplyChain.sol");
const erc20Token = artifacts.require("erc20Token.sol");

module.exports = function (deployer) {
    deployer.deploy(supplyChain);
    deployer.deploy(erc20Token, 10000, "MGS Token", 18, "MGS");
  };

// supplyChain.deployed().then(function(instance) {return instance.createParticipant("A","passA","0x436f6e677261747320796f7520666f756e642045","Manufacturer") })
  
// supplyChain.deployed().then(function(instance) {return instance.createParticipant("B","passB","0x6173746572206567672120452d6d61696c20676d",
// "Supplier") });  

// supplyChain.deployed().then(function(instance) {return instance.createParticipant("C","passC","0x61726b40676d61726b2e636f6d20746f2077696e", "Consumer")});

// supplyChain.deployed().then(function(instance) {return instance.getParticipantDetails(0)});

// supplyChain.deployed().then(function(instance) {return instance.getParticipantDetails(1)});

// supplyChain.deployed().then(function(instance) {return instance.getParticipantDetails(2)});

// supplyChain.deployed().then(function(instance) {return instance.createProduct(0,"prodABC", "100", "123", 11) });
 
// supplyChain.deployed().then(function(instance) {return instance.transferToOwner(0, 1, 0) });

// supplyChain.deployed().then(function(instance) {return instance.transferToOwner(1, 2, 0, {from: "0x61726b40676d61726b2e636f6d20746f2077696e"}) });
 