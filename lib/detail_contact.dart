import 'package:flutter/material.dart';

import 'package:app_contatos/contact.dart';

class DetailContact extends StatelessWidget {
  final Contact? contact;

  const DetailContact({
    Key? key,
    this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes do contato"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Nome",
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(contact!.nome.toString()),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sexo",
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(contact!.sexo.toString()),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Telefone",
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(contact!.telefone.toString()),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(contact!.email.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
