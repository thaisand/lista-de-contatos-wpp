import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lista_wpp/contact.dart';
import 'package:lista_wpp/contact_list_page.dart';
import 'package:lista_wpp/contact_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
      name: 'João',
      phoneNumber: '55 11 99999-1111',
      imagePath: 'assets/images/dog1.png',
    ),
    Contact(
      name: 'Maria',
      phoneNumber: '55 11 99999-2222',
      imagePath: 'assets/images/dog2.png',
    ),
    Contact(
      name: 'Paula',
      phoneNumber: '55 11 99999-3333',
      imagePath: 'assets/images/dog3.png',
    ),
    Contact(
      name: 'Marcelo',
      phoneNumber: '55 11 99999-4444',
      imagePath: 'assets/images/dog4.png',
    ),
    Contact(
      name: 'Luiza',
      phoneNumber: '55 11 99999-5555',
      imagePath: 'assets/images/dog5.png',
    ),
    Contact(
      name: 'Fernando',
      phoneNumber: '55 11 99999-6666',
      imagePath: 'assets/images/dog1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de contatos',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ContactListPage(contacts: contacts),
    );
  }
}
