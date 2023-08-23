import 'package:flutter/material.dart';

import 'main.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 275,
      backgroundColor: Color(0xa307424f),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(40))
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),

          boxShadow: [

            BoxShadow(
              offset: Offset(8, 8),
              color: Color(0x3d000000),spreadRadius: 30,blurRadius: 20,
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          )),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        'Setting',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      UserName(filename: 'profile.jpg'),
                      SizedBox(width: 12),
                      Text(
                        'Wajahat Ahmed',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  DrawerItems(title: 'Account',icon: Icons.key,),
                  DrawerItems(title: 'Chats',icon: Icons.chat_bubble,),
                  DrawerItems(title: 'Notifications',icon: Icons.notifications,),
                  DrawerItems(title: 'Data and Storage',icon: Icons.storage,),
                  DrawerItems(title: 'Help',icon: Icons.help,),
                  Divider(
                    height: 35,
                    color: Colors.white,
                  ),
                  DrawerItems(title: 'invite a friend',icon: Icons.people_outline,),

                ],
              ),
              DrawerItems(title: 'Logout',icon: Icons.logout,),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItems({
    Key? key, required this.title, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                )),
            SizedBox(
              width: 40,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
