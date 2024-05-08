import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:puc_minas/app/core/constants/app_assets.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final cpfEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Image.asset(AppAssets.logo),
          const SizedBox(height: 30),
          TextFormField(
            validator: Validatorless.cpf('O CPF é inválido'),
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Insira seu CPF'),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Senha'),
          )
        ]),
      ),
    );
  }
}
