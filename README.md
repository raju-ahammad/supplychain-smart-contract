# supplychain-smart-contract


# type the following to compile your code and deploy it to the Ganache blockchain:
1  install ganache - https://www.trufflesuite.com/ganache <br />
2. npm install -g truffle <br />
3. truffle deploy --reset <br />
4. truffle console <br />


// supplyChain.deployed().then(function(instance) {return instance.createParticipant("Mamun","passA","Adress","Manufacturer") })
  
// supplyChain.deployed().then(function(instance) {return instance.createParticipant("Mifta","passB","Adress", "Supplier") });  

// supplyChain.deployed().then(function(instance) {return instance.createParticipant("Mim","passC","Adress", "Consumer")});

// supplyChain.deployed().then(function(instance) {return instance.getParticipantDetails(0)});

// supplyChain.deployed().then(function(instance) {return instance.getParticipantDetails(1)});

// supplyChain.deployed().then(function(instance) {return instance.getParticipantDetails(2)});

// supplyChain.deployed().then(function(instance) {return instance.createProduct(0,"prodABC", "100", "123", 11) });


 
// supplyChain.deployed().then(function(instance) {return instance.transferToOwner(0, 1, 0) })

// supplyChain.deployed().then(function(instance) {return instance.transferToOwner(1, 2, 0, {from: "Adress"}) });
 
