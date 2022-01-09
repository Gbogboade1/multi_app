import 'package:flutter/material.dart';
import 'package:multi_app/home_page.dart';
import 'tabbedbar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.greenAccent[500],
      ),
      home: Tabs(),
    );
  }
}

class TabbedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                actions: <Widget>[
                  Icon(Icons.search),
                  
                ],
                title: Text("CHAT"),
                bottom: TabBar(
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.camera_alt)),
                    Tab(
                      child: Wrap(children: [
                        Text("Chat"),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            radius: 10,
                          ),
                        )
                      ]),
                    ),
                    Tab(
                      child: Wrap(children: [
                        Text("Status"),
                        Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: CircleAvatar(
                              radius: 10,
                            ))
                      ]),
                    ),
                    Tab(
                      child: Wrap(children: [
                        Text("Call"),
                        Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: CircleAvatar(
                              radius: 10,
                            ))
                      ]),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Container(
                      child: Scaffold(
                          body: Center(
                    child: Icon(Icons.camera),
                  ))),
                  Container(child: HomePage()),
                  Container(
                      child: Scaffold(
                          body: Center(
                    child: Icon(Icons.camera),
                  ))),
                  Container(
                      child: Scaffold(
                          body: Center(
                    child: Icon(Icons.camera),
                  )))
                ],
              ),
            )));
  }
}
