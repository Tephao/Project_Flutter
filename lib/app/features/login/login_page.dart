import 'package:flutter/material.dart';
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

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(AppAssets.logo),
                const SizedBox(height: 40),
                TextFormField(
                  controller: cpfEC,
                  validator: Validatorless.multiple([
                    Validatorless.cpf('O CPF é inválido'),
                    Validatorless.required('Este campo é obrigatório'),
                  ]),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: 'Insira seu CPF'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordEC,
                  obscureText: true,
                  validator: Validatorless.multiple([
                    Validatorless.min(6, 'Mínimo de 6 caracteres'),
                    Validatorless.required('Este campo é obrigatório'),
                  ]),
                  decoration: const InputDecoration(
                    hintText: 'Insira sua senha',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    bool valid = formKey.currentState?.validate() ?? false;
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Acessar'),
                      SizedBox(width: 10),
                      Icon(Icons.login),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
