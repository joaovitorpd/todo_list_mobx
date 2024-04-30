import 'package:flutter/material.dart';
import 'package:todo_list_mobx/pages/home/components/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    _dialog() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: const Text('Adicionar Item'),
              content: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Novo Item',
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Salvar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'),
                ),
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(hintText: "Pesquisa..."),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) {
          return const ItemWidget();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _dialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
