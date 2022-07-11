import 'package:app_contatos/add_contact_page.dart';
import 'package:app_contatos/detail_contact.dart';
import 'package:app_contatos/list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ListPage(),
        '/adicionar': (context) => const AddContactPage(),
        '/detalhar': (context) => const DetailContactPage(),
      },
    );
  }
}