import 'package:flutter/material.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(leading: Icon(Icons.person), title: Text('Иванов И.И.'), subtitle: Text('Мастер цеха')),
        ListTile(leading: Icon(Icons.person), title: Text('Петров П.П.'), subtitle: Text('Сварщик')),
        ListTile(leading: Icon(Icons.person), title: Text('Сидоров С.С.'), subtitle: Text('Электрик')),
      ],
    );
  }
}