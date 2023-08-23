import 'package:chat_app_ui/drawer_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: DrawerThemeData(scrimColor: Colors.transparent)
      ),
      title: 'chat app ui',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xf9177081),
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                      )),
                  // Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Messages",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Online",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Group",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Favoriate",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 25,
                right: 25,
              ),
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color(0xf907424f),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favorite Contacts',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      // Expanded(child: Container()),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildcolumnavatar('user_1', 'a.png'),
                        buildcolumnavatar('user_2', 'b.png'),
                        buildcolumnavatar('user_3', 'c.jpg'),
                        buildcolumnavatar('user_4', 'd.jpg'),
                        buildcolumnavatar('user_5', 'e.jpg'),
                        buildcolumnavatar('user_6', 'f.jpg'),
                        buildcolumnavatar('user_7', 'g.jpg'),
                        buildcolumnavatar('user_8', 'h.jpg'),
                        buildcolumnavatar('user_9', 'i.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
            top: 330,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: ListView(padding: EdgeInsets.only(left: 25), children: [
                buildColumnCoversationRow('user_1','Hello!how are you?','a.png',4),
                buildColumnCoversationRow('user_2','Done!','b.png',7),
                buildColumnCoversationRow('user_3','but?','c.jpg',99),
                buildColumnCoversationRow('user_4','Nooo...','d.jpg',0),
                buildColumnCoversationRow('user_5','howwww','e.jpg',1),
                buildColumnCoversationRow('user_6','where?','f.jpg',2),
                buildColumnCoversationRow('user_7','NEVER!','g.jpg',0),
                buildColumnCoversationRow('user_8','?','h.jpg',3),
                buildColumnCoversationRow('user_9','WHAT?','i.jpg',9),
              ]),
            )),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
          width: 65,
        child: FloatingActionButton(
            child: Icon(Icons.edit_rounded,size: 30,),
            backgroundColor: Color(0xf907424f),
            onPressed: (){

        }),
      ),
      drawer: DrawerPage(),
    );
  }

  Column buildColumnCoversationRow(String name,String message,String filename,int msgcount) {
    return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          UserName(filename: filename),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                message,
                                style:
                                    TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25,top: 5),
                        child: Column(
                          children: [
                            Text(
                              '01:35 AM',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            if(msgcount>0)
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Color(0xff27c1a9),
                              child: Center(
                                child: Text(
                                  msgcount.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    indent: 70,
                    thickness: 1.5,
                  )
                ],
              );
  }

  Padding buildcolumnavatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Column(
        children: [
          UserName(filename: filename),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class UserName extends StatelessWidget {
  final String filename;

  const UserName({Key? key, required this.filename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset("assets/$filename").image,
      ),
    );
  }
}
