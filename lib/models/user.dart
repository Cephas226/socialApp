import 'package:flutter_social/utils/utils.dart';

class User {
  int id;
  String name;
  String photo;
  String location = 'Seattle, USA.';
  String gender;
  int age;
  String roles;

  User(this.id, this.name, this.photo, this.gender, this.age,this.roles);
}


// Names generated at http://random-name-generator.info/
final List<User> users = [
  User(1, 'Matt Maxwell', AvailableImages.man1['assetPath'], 'M', 27,"Music"),
  User(2, 'Maria Perez', AvailableImages.woman1['assetPath'], 'F', 24,"Travalling"),
  User(3, 'Craig Jordan', AvailableImages.man2['assetPath'], 'M', 28,"Dancing"),
  User(4, 'Charlotte Mckenzie', AvailableImages.woman2['assetPath'], 'F', 23,"Food"),
  User(5, 'Rita Pena', AvailableImages.woman3['assetPath'], 'F', 25,"Food"),
  User(6, 'Robin Mcguire', AvailableImages.man3['assetPath'], 'M', 29,"Sport"),
  User(7, 'Angelina Love', AvailableImages.woman4['assetPath'], 'F', 22,"Coffe"),
  User(8, 'Louis Diaz', AvailableImages.man4['assetPath'], 'M', 23,"Dancing"),
  User(9, 'Kyle Poole', AvailableImages.man5['assetPath'], 'M', 25,"Drink"),
  User(10, 'Brenda Watkins', AvailableImages.woman5['assetPath'], 'F', 26,"Music"),
];

final List<String> userHobbies = [
  "Dancing", "Hiking", "Singing", "Reading", "Fishing"
];
