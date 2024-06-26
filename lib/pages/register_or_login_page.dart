import 'package:auth_project/pages/login/login_page.dart';
import 'package:auth_project/pages/register/register_page.dart';
import 'package:flutter/material.dart';

class RegisterOrLoginPage extends StatefulWidget {
  const RegisterOrLoginPage({super.key});

  @override
  State<RegisterOrLoginPage> createState() => _RegisterOrLoginPageState();
}

class _RegisterOrLoginPageState extends State<RegisterOrLoginPage> {
  bool isLoginPage = true;

  void togglePage() {
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginPage == true) {
      return LoginPage(
        onRegister: togglePage,
      );
    } else {
      return RegisterPage(
        onLogin: togglePage,
      );
    }
  }
}
