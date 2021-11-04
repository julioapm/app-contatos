import 'package:app_contatos/contact.dart';
import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({ Key? key }) : super(key: key);

  @override
  _AddContactPageState createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _sexoController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Contato")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nomeController
            ),
            TextField(
              controller: _sexoController,
            ),
            TextField(
              controller: _telefoneController,
            ),
            TextField(
              controller: _emailController,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    _nomeController.clear();
                    _sexoController.clear();
                    _telefoneController.clear();
                    _emailController.clear();
                  }, 
                  child: const Text("Cancelar")
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green
                  ),
                  onPressed: (){
                    Contact contact = Contact(
                      nome: _nomeController.text,
                      sexo: _sexoController.text,
                      telefone: _telefoneController.text,
                      email: _emailController.text
                    );
                    Navigator.pop(context, contact);
                  }, 
                  child: const Text("Salvar")
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
