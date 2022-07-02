import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20.0,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/166712511_1164205410677250_434355456952300035_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG11IO0Wsc7dVVP-B9y_j8us4no6ncecuSziejqdx5y5GU95q3QDayEWR7ZHrVQWxzlz0R54xYgbBD7_ty3oQob&_nc_ohc=uETFZJUzBwIAX8AqR0h&_nc_ht=scontent.fcai20-4.fna&oh=00_AT-pW7JoR45HrceJX8Hh8cIyE5cabnvG2X1A3AY2d146PA&oe=62BEAB8A',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white24,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          ),
          IconButton(onPressed: (){}, icon:
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white24,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white24,
                  ),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 150.0,
                  child: ListView.separated(
                      itemBuilder: (context,index) => buildStoryItem(),
                      separatorBuilder: (context,index) => SizedBox(
                        width: 20.0,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 60,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                ListView.separated(
                    itemBuilder: (context,index) => buildChatItem(),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context,index) => SizedBox(
                      height: 40.0,
                    ),
                    itemCount: 60,
                ),
              ],
            ),
          ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
   width: 70.0,
   child: Column(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius: 35.0,
             backgroundImage: NetworkImage(
               'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/166712511_1164205410677250_434355456952300035_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG11IO0Wsc7dVVP-B9y_j8us4no6ncecuSziejqdx5y5GU95q3QDayEWR7ZHrVQWxzlz0R54xYgbBD7_ty3oQob&_nc_ohc=uETFZJUzBwIAX8AqR0h&_nc_ht=scontent.fcai20-4.fna&oh=00_AT-pW7JoR45HrceJX8Hh8cIyE5cabnvG2X1A3AY2d146PA&oe=62BEAB8A',
             ),
           ),
           Padding(
             padding: EdgeInsetsDirectional.only(
               bottom: 3.0,
               end: 3.0,
             ),
             child: CircleAvatar(
               radius: 5.0,
               backgroundColor: Colors.red,
             ),
           ),
         ],
       ),
       SizedBox(
         height: 10.0,
       ),
       Text(
         'Abdo Nasser EL Said Hydara',
         maxLines: 2,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(
           color: Colors.white,
         ),
       ),
     ],
   ),
 );
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(
              'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/166712511_1164205410677250_434355456952300035_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG11IO0Wsc7dVVP-B9y_j8us4no6ncecuSziejqdx5y5GU95q3QDayEWR7ZHrVQWxzlz0R54xYgbBD7_ty3oQob&_nc_ohc=uETFZJUzBwIAX8AqR0h&_nc_ht=scontent.fcai20-4.fna&oh=00_AT-pW7JoR45HrceJX8Hh8cIyE5cabnvG2X1A3AY2d146PA&oe=62BEAB8A',
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Serag',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello , How are you , My name is ahmed serag',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Container(
                    height: 5.0,
                    width: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '10:30 pm',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
