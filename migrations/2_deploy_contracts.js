var SmartCoin = artifacts.require("./SmartCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(SmartCoin);
};
