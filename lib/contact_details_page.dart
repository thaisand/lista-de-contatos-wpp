import 'package:flutter/material.dart';
import 'package:lista_wpp/contact.dart';
import 'package:flutter/services.dart';

class ContactDetailsPage extends StatelessWidget {
  final Contact contact;

  ContactDetailsPage({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(contact.imagePath),
            radius: 50,
          ),
          SizedBox(height: 20),
          Text(
            contact.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            contact.phoneNumber,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
