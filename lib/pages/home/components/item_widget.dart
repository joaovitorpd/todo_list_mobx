import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Título'),
      leading: Checkbox(
        value: true,
        onChanged: (bool? value) {},
      ),
      trailing: IconButton(
        color: Colors.red,
        icon: const Icon(Icons.remove_circle),
        onPressed: () {},
      ),
    );
  }
}
