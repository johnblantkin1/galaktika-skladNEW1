import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        _ReqTile(title: 'Создать заявку', subtitle: 'Запрос на выдачу материалов', icon: Icons.add_task),
        _ReqTile(title: 'Мои заявки', subtitle: 'Статусы и история', icon: Icons.assignment_outlined),
        _ReqTile(title: 'Все заявки (для админа)', subtitle: 'Одобрить/отклонить', icon: Icons.fact_check_outlined),
      ],
    );
  }
}

class _ReqTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const _ReqTile({required this.title, required this.subtitle, required this.icon});

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