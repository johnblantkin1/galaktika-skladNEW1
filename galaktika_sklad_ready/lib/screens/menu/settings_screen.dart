import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(leading: Icon(Icons.palette_outlined), title: Text('Тема и бренд'), subtitle: Text('Фирменные цвета и логотип')),
        ListTile(leading: Icon(Icons.security_outlined), title: Text('Безопасность'), subtitle: Text('Пароли и роли')),
        ListTile(leading: Icon(Icons.info_outline), title: Text('О приложении'), subtitle: Text('ГАЛАКТИКА — Склад v1.0.0')),
      ],
    );
  }
}