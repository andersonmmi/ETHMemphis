var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var Registration = artifacts.require("./Registration.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(Registration);
};
