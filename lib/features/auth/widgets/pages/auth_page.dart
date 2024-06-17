import 'package:flutter/material.dart';
import 'package:minions/features/auth/auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthForm(),
    );
  }
}
