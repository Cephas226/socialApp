import 'package:flutter_social/models/user.dart';
import 'package:flutter_social/utils/utils.dart';

class Event {
  int id, userId,numberInvite;
  String createdAt;
  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra.';
  String bannerImg = AvailableImages.postBanner['assetPath'];
  String userName, userImage;
  String category;

  Event(this.id, this.createdAt, this.userId, this.userName, this.userImage,this.category,this.numberInvite);
}

final List<Event> feeds = [
  Event(1, '25 Jul 18 at 11:00 am-2:00pm', users[0].id, users[0].name, users[0].photo,'Food',10),
  Event(2, '12 Jul 18 at 11:00 am-2:00pm', users[1].id, users[1].name, users[1].photo,'Travelling',50),
  Event(3, '20 Jul 11 at 05:00 am-4:00pm', users[2].id, users[2].name, users[2].photo,'Dancing',20),
  Event(4, '25 Jul 18 at 11:00 am-2:00pm', users[3].id,users[3].name, users[3].photo,'Music',30),
];
