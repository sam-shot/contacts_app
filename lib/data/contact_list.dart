import 'package:contacts_app/model/contact_model.dart';

List<Contacts> contactList = [
  Contacts(firstName: "Favour", phoneNumber: 08015356421, image: "girl.jpg", lastName: "Ahkabue"),
  Contacts(firstName: "Samuel", phoneNumber: 08012765421),
  Contacts(firstName: "Ahkabue", phoneNumber: 0808763421, image: "girl.jpg"),
  Contacts(firstName: "Tobi", phoneNumber: 0704343421),
  Contacts(firstName: "Tobi", phoneNumber: 08017543421),
  Contacts(firstName: "Ahkabue", phoneNumber: 09012356421, image: "girl.jpg"),
  Contacts(firstName: "Tobi", phoneNumber: 08012343421),
  Contacts(firstName: "Tobi", phoneNumber: 08012343421),

  Contacts(firstName: "Ahkabue", phoneNumber: 08012343421, image: "girl.jpg"),
  Contacts(firstName: "Tobi", phoneNumber: 08012343421),
  Contacts(firstName: "Tobi", phoneNumber: 08012343421),


];

List<Contacts> shuffled = [...contactList]..shuffle();

