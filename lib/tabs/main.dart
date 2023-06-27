import 'package:flutter/material.dart';
import 'package:loginpage/tabs/calls.dart';
import 'package:loginpage/tabs/camera.dart';
import 'package:loginpage/tabs/chats.dart';
import 'package:loginpage/tabs/status.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData(
        //   backgroundColor: new Color(0xff023020),
        primaryColorDark: new Color(0xff1e453e),
        accentColor: new Color(0xff1e453e),
      ),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: new Color(0xff1e453e),
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                print('icon button click');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                print('icon button click');
              },
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALL',
              ),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Camera(),
            new Chats(),
            new Status(),
            new Call(),
          ],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                backgroundColor: new Color(0xff1e453e),
                onPressed: () {},
                child: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
              )
            : _tabController.index == 1
                ? FloatingActionButton(
                    backgroundColor: new Color(0xff1e453e),
                    onPressed: () {},
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          FloatingActionButton(
                            backgroundColor: new Color(0xff1e453e),
                            onPressed: () {},
                            child: Icon(
                              Icons.camera,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : FloatingActionButton(
                        backgroundColor: new Color(0xff1e453e),
                        onPressed: () {},
                        child: Icon(
                          Icons.add_call,
                          color: Colors.white,
                        ),
                      ));
  }
}
