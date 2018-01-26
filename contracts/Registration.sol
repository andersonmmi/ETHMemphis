pragma solidity ^0.4.15;

 contract Registration {

   Guest[] public guests;

   struct Guest {
     bytes32 firstName;
     bytes32 lastName;
     bytes256 email;
     bytes256 organization;
     bytes256 gitHubUrl;
     bytes256 linkedInUrl;
     bytes256 identity;
     bytes1024 attribute;
   }

   function addPerson(
      bytes32 _firstName,
      bytes32 _lastName,
      bytes256 _email,
      bytes256 _orginzation,
      bytes256 _gitHubUrl,
      bytes256 _linkedInUrl,
      bytes256 _identity,
      bytes1024 _attribute
      ) returns (bool success) {

     Guest memory newGuest;
     newGuest.firstName = _firstName;
     newGuest.lastName = _lastName;
     newGuest.email = _email;
     newGuest.organization = _organization;
     newGuest.gitHubUrl = _gitHubUrl;
     newGuest.linkedInUrl = _linkedInUrl;
     newGuest.identity = _identity;
     newGuest.attribute = _attribute;

     guests.push(newGuest);
     return true;

   }

   function getGuests() constant returns (
      bytes32[],
      bytes32[],
      bytes256[],
      bytes256[],
      bytes256[],
      bytes256[],
      bytes256[],
      bytes1024[]
      ) {

     uint length = guests.length;

     bytes32[] memory firstNames = new bytes32[](length);
     bytes32[] memory lastNames = new bytes32[](length);
     bytes256[] memory emails = new bytes256[](length);
     bytes256[] memory organizations = new bytes256[](length);
     bytes256[] memory gitHubUrls = new bytes256[](length);
     bytes256[] memory linkedInUrls = new bytes256[](length);
     bytes256[] memory identities = new bytes256[](length);
     bytes1024[] memory attributes = new bytes1024[](length);



     for (uint i = 0; i < guests.length; i++) {
       Guest memory currentGuest;
       currentGuest = guests[i];

       firstNames[i] = currentGuest.firstName;
       lastNames[i] = currentGuest.lastName;
       emails[i] = currentGuest.email;
       organizations[i] = currentGuest.organization;
       gitHubUrls[i] = currentGuest.gitHubUrl;
       linkedInUrls[i] = currentGuest.linkedInUrl;
       identities[i] = currentGuest.identity;
       attributes[i] = currentGuest.attribute;
    }
     return (
      firstName,
      lastName,
      email,
      organization,
      gitHubUrl,
      linkedInUrl,
      identity,
      attribute
      );
   }
 }
