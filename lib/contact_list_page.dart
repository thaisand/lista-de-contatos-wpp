import 'package:flutter/material.dart';
import 'package:lista_wpp/contact.dart';
import 'package:lista_wpp/contact_details_page.dart';
import 'package:flutter/services.dart';

class ContactListPage extends StatelessWidget {
  final List<Contact> contacts;

  ContactListPage({required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contacts[index].imagePath),
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ContactDetailsPage(contact: contacts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
