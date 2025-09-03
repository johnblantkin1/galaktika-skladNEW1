import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';
import 'menu/stock_screen.dart';
import 'menu/requests_screen.dart';
import 'menu/employees_screen.dart';
import 'menu/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  final _screens = const [
    StockScreen(),
    RequestsScreen(),
    EmployeesScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthService>().currentUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ГАЛАКТИКА — Судостроительная верфь'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: _screens[_index],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.inventory_2_outlined), label: 'Склад'),
          NavigationDestination(icon: Icon(Icons.assignment_outlined), label: 'Заявки'),
          NavigationDestination(icon: Icon(Icons.people_alt_outlined), label: 'Сотрудники'),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Настройки'),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Image.asset('assets/images/logo.png', height: 72),
              const SizedBox(height: 8),
              Text(user?.email ?? '', style: const TextStyle(fontWeight: FontWeight.bold)),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Выйти'),
                onTap: () => context.read<AuthService>().signOut(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}