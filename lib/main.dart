import 'package:flutter/material.dart';
import 'package:restaurant_app/style.dart';

void main() {
  runApp(MaterialApp(
    title: 'Restaurant App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final body = Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 75, left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Discover',
                        style: title,
                      ),
                      Text(
                        'Restaurant',
                        style: title,
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 35,
                  right: 35,
                  bottom: 10,
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 10),
                            blurRadius: 12,
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1514843319620-4f042827c481?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white,
                            Colors.transparent
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: <Widget>[
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(1, 1),
                                        blurRadius: 5,
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.store,
                                        size: 18,
                                        semanticLabel: 'Store',
                                        color: Colors.grey),
                                    onPressed: () {
                                      print('object');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Mexican Bite',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text('5.0 '),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18,
                                          ),
                                          Text(
                                            ' (100)',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(45),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(1, 1),
                                              blurRadius: 5,
                                            ),
                                          ],
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.send,
                                              size: 18,
                                              semanticLabel: 'Store',
                                              color: (index % 2 == 0)
                                                  ? Colors.blue
                                                  : Colors.grey),
                                          onPressed: () {
                                            print('object');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 52),
                              child: Text(
                                'Mexican - 18 Tank House Lane Hips spot for Mexican tapas with a patio Open until 12.00 AM.',
                                style: TextStyle(color: Colors.black45),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 242.5),
                      child: Center(
                        child: Container(
                          height: 35,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),
                                right: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 1),
                                blurRadius: 7,
                              )
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('N Cedar St & Cedar'),
                              Icon(
                                Icons.keyboard_arrow_right,
                                size: 20,
                                color: Colors.black38,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }, childCount: 5),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent[200],
        unselectedItemColor: Colors.black26,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('Explorer')),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), title: Text('Explorer')),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), title: Text('Camera')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notifications')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Contact')),
        ],
      ),
    );

    final circleBackground = Positioned(
      top: -70,
      left: -35,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomLeft,
            stops: [0, 1],
            colors: [Color(0xFFB5ECFD), Color(0xFFB4D4EB)],
          ),
        ),
      ),
    );

    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          circleBackground,
          body,
        ],
      ),
    );
  }
}
