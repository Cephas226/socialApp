import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/models/feed.dart';
import 'package:flutter_social/models/user.dart';
import 'package:flutter_social/widgets/feed_card1.dart';
import 'package:flutter_social/widgets/feed_card2.dart';
import 'package:flutter_social/widgets/feed_card3.dart';

class FeedsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Feed",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );
    final listOfOnlineUsers = Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: users.map((user) => _buildUserCard(user, context)).toList(),
      ),
    );

    final onlineUsers = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //onlineUsersHeading,
          SizedBox(
            height: 1.0,
          ),
          listOfOnlineUsers
        ],
      ),
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180.0,
            backgroundColor: Colors.white,
            title:Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.orangeAccent,
                    child:Text(
                      'C',
                      style: TextStyle(
                          color: Colors.white,fontSize: 30, fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Text(
                    'MEET',
                    style: TextStyle(
                        color: Colors.black,fontSize: 20, fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.filter_list_sharp,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
            floating: true,
            flexibleSpace: ListView(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Container(
                //  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
             //     padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: onlineUsers,
                  /*TextField(
                    decoration: InputDecoration(
                      hintText: "Bouddha, Kathmandu",
                      border: InputBorder.none,
                      icon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                    ),
                  )*/
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.grey.withOpacity(0.1),
              padding: EdgeInsets.only(top: 0.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // pageTitle,
                        Center(
                          child: Text('Social events new you', style: TextStyle(
                              color: Colors.orangeAccent,fontSize: 20, fontWeight: FontWeight.w600
                          ),),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FeedCard2(event: feeds[0]),
                        SizedBox(
                          height: 10.0,
                        ),
                        FeedCard2(
                          event: feeds[1],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FeedCard2(
                          event: feeds[2],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],

        /*
        ,*/
      ),
    );
  }

  Widget _buildUserCard(User user, BuildContext context) {
    final firstName = user.name.split(" ")[0];
    final role = user.roles;
    print(user.roles);
    final onlineTag = Positioned(
      bottom: 10.0,
      right: 3.0,
      child: Container(
        height: 15.0,
        width: 15.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2.0),
          color: Colors.lightGreen,
        ),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.pushNamed(context, chatDetailsViewRoute,
              arguments: user.id),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20.0),
                height: 50.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(user.photo),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              // onlineTag
            ],
          ),
        ),
        Text(
          firstName,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text(
          role,
          style: TextStyle(fontWeight: FontWeight.w100),
        )
      ],
    );
  }
}
