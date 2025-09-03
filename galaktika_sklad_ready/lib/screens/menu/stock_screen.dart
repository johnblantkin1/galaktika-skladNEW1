import 'package:flutter/material.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        _CardTile(title: 'Остатки', subtitle: 'Просмотр доступных материалов', icon: Icons.inventory_2_outlined),
        _CardTile(title: 'Приход', subtitle: 'Добавить поступление на склад', icon: Icons.call_received),
        _CardTile(title: 'Расход', subtitle: 'Выдать материалы', icon: Icons.call_made),
        _CardTile(title: 'Сканер', subtitle: 'Сканирование QR/штрих-кодов', icon: Icons.qr_code_scanner),
      ],
    );
  }
}

class _CardTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const _CardTile({required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: (){},
      ),
    );
  }
}