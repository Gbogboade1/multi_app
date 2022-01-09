import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Contact"),
        actions: <Widget>[
          Icon(Icons.search),
          
          DropdownButton(
            // value: ,
            items: [DropdownMenuItem(child: Text("Invite Friend")),
            DropdownMenuItem(child: Text("Contacts")),
            DropdownMenuItem(child: Text("Refresh")),
            DropdownMenuItem(child: Text("Help"))
            ],
            onChanged: (context) {
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
