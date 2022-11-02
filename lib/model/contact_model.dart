class Contacts {
  String firstName;
  String? lastName;
  int phoneNumber;
  String? image;

  var length;

  
  Contacts(
      {required this.firstName,
      this.image,
      required this.phoneNumber,
      this.lastName});

      
}
