import 'package:flutter/material.dart';
import 'home_page.dart';
import 'contact_list.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Whatsapp'),
              bottom: TabBar(isScrollable: true, tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                    child: Row(children: [
                  Text("Chat"),
                  CircleAvatar(
                    child: Text("4"),
                    radius: 10,
                  ),
                ])),
                Tab(
                    child: Row(children: [
                  Text("Status"),
                  CircleAvatar(
                    radius: 10,
                  ),
                ])),
                Tab(
                    child: Row(children: [
                  Text("Call"),
                  CircleAvatar(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("1"),
                    ),
                    radius: 10,
                  ),
                ])),
              ]),
            ),
            body: TabBarView(children: [
              Container(child: Center(child: Text("Camera"))),
              Scaffold(
                floatingActionButton: FloatingActionButton(onPressed: ((){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactList()));
                }),
                backgroundColor: Colors.green,
                child: Icon(Icons.chat),
                ),
                body: Container(child: HomePage(),)),
              Container(child: Center(child: Text("Status"))),
              Container(child: Center(child: Text("Calls"))),
            ])),
      ),
    );
  }
}
