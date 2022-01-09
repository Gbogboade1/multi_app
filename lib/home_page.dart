import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<WhatsAppContact> contactList = [
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020",
        unreadMessageCount: 3),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
    WhatsAppContact(
        contactName: "Kola",
        message: "You're welcome",
        messageDate: "01/01/2020",
        isPinned: true),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
    WhatsAppContact(
        contactName: "Wale",
        message: "You're welcome",
        messageDate: "01/01/2020"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow.withOpacity(.7),
      body: SafeArea(
        child: Container(
          // color: Colors.blue,
          child: ListView.builder(
            itemCount: contactList.length,
            itemBuilder: (_, i) {
              WhatsAppContact contact = contactList[i];
              return listItem(context, contact);
            },
          ),
        ),
      ),
    );
  }

  Widget listItem(context, WhatsAppContact contact) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 8.0,
        ),
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: <Widget>[
              ListTile(
                dense: false,
                leading: CircleAvatar(
                  foregroundColor: Colors.grey,
                ),
                title: Text("${contact.contactName}"),
                subtitle: Text("${contact.message}"),
                trailing: Column(
                  children: <Widget>[
                    Text("${contact.messageDate}",
                        style: TextStyle(fontSize: 7)),
                    contact.unreadMessageCount > 0
                        ? CircleAvatar(backgroundColor:Colors.green,
                        child: Text("${contact.unreadMessageCount}"))
                        : contact.isPinned 
                            ? Icon(Icons.room_service)
                            : SizedBox()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WhatsAppContact {
  final String imageUrl;
  final String contactName;
  final String message;
  final String messageDate;

  final bool isPinned;
  final int unreadMessageCount;

  WhatsAppContact(
      {this.imageUrl = "",
      this.contactName,
      this.message,
      this.messageDate,
      this.isPinned = false,
      this.unreadMessageCount =0});
}
