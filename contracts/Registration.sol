pragma solidity ^0.4.19;

 contract Registration {

   Guest[] public guests;

   struct Guest {
      string firstName;
      string lastName;
      string email;
      string organization;
      string gitHubUrl;
      string linkedInUrl;
      string identity;
      /* string attribute; */
   }

   function addPerson(
      string _firstName,
      string _lastName,
      string _email,
      string _organization,
      string _gitHubUrl,
      string _linkedInUrl,
      string _identity
      /* string _attribute */

   ) returns (bool success) {

      Guest memory newGuest;
      newGuest.firstName = _firstName;
      newGuest.lastName = _lastName;
      newGuest.email = _email;
      newGuest.organization = _organization;
      newGuest.gitHubUrl = _gitHubUrl;
      newGuest.linkedInUrl = _linkedInUrl;
      newGuest.identity = _identity;
      /* newGuest.attribute = _attribute; */

      guests.push(newGuest);
      return true;
   }

   /* function getGuests() constant returns (
      string[],
      string[],
      string[],
      string[],
      string[],
      string[],
      string[],
      string[]
   ) {
      uint length = guests.length;

      string[] memory firstNames = new string[](length);
      string[] memory lastNames = new string[](length);
      string[] memory emails = new string[](length);
      string[] memory organizations = new string[](length);
      string[] memory gitHubUrls = new string[](length);
      string[] memory linkedInUrls = new string[](length);
      string[] memory identities = new string[](length);
      string[] memory attributes = new string[](length);

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
   } */
}
