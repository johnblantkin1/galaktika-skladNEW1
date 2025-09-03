import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/auth_service.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GalaktikaApp());
}

class GalaktikaApp extends StatelessWidget {
  const GalaktikaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ГАЛАКТИКА — Склад',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.red,
          fontFamily: 'TacticSans',
        ),
        home: Consumer<AuthService>(
          builder: (_, auth, __) => auth.currentUser == null ? const LoginScreen() : const HomeScreen(),
        ),
      ),
    );
  }
}