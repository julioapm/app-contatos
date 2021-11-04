import 'package:app_contatos/add_contact_page.dart';
import 'package:app_contatos/contact.dart';
import 'package:app_contatos/detail_contact.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({ Key? key }) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Contatos"),
      ),
      body: ListView.separated(
        itemCount: contacts.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailContact(contact: contacts[index])));
            },
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16),
                    Icon(contacts[index].sexo == "M" ? Icons.male : Icons.female, size: 40),
                    const SizedBox(width: 16),
                    Text(contacts[index].nome.toString()),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index){
          return const Divider(
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          var contact = await Navigator.push(context, MaterialPageRoute(builder: (context) => const AddContactPage()));
          if(contact != null){
            setState(() => contacts.add(contact));
          }
        },
      ),
    );
  }
}