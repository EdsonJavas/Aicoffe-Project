import 'package:aicoffe/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const aicoffe());
}

class aicoffe extends StatelessWidget {
  const aicoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aicoffe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,ai
      home: const LoginScreen(),
    );
  }
}
