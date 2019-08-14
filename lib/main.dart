import 'package:flutter/material.dart';
import 'package:restaurant_app/assets.dart';
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
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //* Make a Body
    final body = Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 55, left: 35, right: 35),
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
                          image: NetworkImage(imgUrl[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white54,
                            Colors.white10,
                            Colors.transparent
                          ],
                          stops: [.38, .47, .7, 1],
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
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.1,
                                        child: Text(
                                          imgTitle[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                          overflow: TextOverflow.ellipsis,
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
                                                  ? Color(0xFF5585f4)
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
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 13),
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
            }, childCount: imgUrl.length),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 45,
        child: BottomNavigationBar(
          selectedItemColor: Color(0xFF5585f4),
          unselectedItemColor: Colors.black26,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), title: Text('Explorer')),
            BottomNavigationBarItem(
                icon: Icon(Icons.widgets), title: Text('Apps')),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt), title: Text('Camera')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text('Notifications')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Contact')),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
        ),
      ),
    );

    //* Make Circle Background
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
