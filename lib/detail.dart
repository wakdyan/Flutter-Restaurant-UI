import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/style.dart';

class Detail extends StatefulWidget {
  final imagePost, titlePost;
  Detail({this.imagePost, this.titlePost});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // var scaffold = Scaffold(appBar: AppBar(bottom:  ,),);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                  child: Image.network(
                    widget.imagePost,
                    fit: BoxFit.cover,
                  ),
                  height: MediaQuery.of(context).size.height / 2.2,
                  width: MediaQuery.of(context).size.width),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 180, 20, 30),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 1),
                          blurRadius: 7,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 190,
                              child: Text(
                                widget.titlePost,
                                style: titleDetailStyle,
                                maxLines: 3,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 3),
                                      blurRadius: 5,
                                    ),
                                  ]),
                              child: CircleAvatar(
                                child: IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est.',
                            style: postDetailStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(0, 1),
                                              blurRadius: 3)
                                        ]),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.watch_later,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Container(
                                      width: 70,
                                      child: Text(
                                        '10am-10pm',
                                        style: highlightTextHomeStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(0, 1),
                                              blurRadius: 3)
                                        ]),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.gps_fixed,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                                      width: 70,
                                      child: Text(
                                        '1.5 Km',
                                        style: highlightTextHomeStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(0, 1),
                                              blurRadius: 3)
                                        ]),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.map,
                                        color: Colors.redAccent,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                                      width: 70,
                                      child: Text(
                                        'Map view',
                                        style: highlightTextHomeStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(0, 1),
                                              blurRadius: 3)
                                        ]),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.store,
                                        color: Colors.lightGreen,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                                      width: 70,
                                      child: Text(
                                        'Delivery',
                                        style: highlightTextHomeStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TabBar(
                          controller: _tabController,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3,
                                  style: BorderStyle.solid),
                              insets: EdgeInsets.only(bottom: 40)),
                          labelPadding: EdgeInsets.only(top: 54),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black38,
                          tabs: <Widget>[
                            Text('DETAILS'),
                            Text('MENU'),
                            Text('REVIEWS')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
