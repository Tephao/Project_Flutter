import 'package:flutter/material.dart';
import 'package:puc_minas/app/core/constants/app_routes.dart';
import 'package:puc_minas/app/features/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        actions: [
          IconButton(
            onPressed: () async {
              bool result = await HomeController.logout();
              if (result) {
                Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.login, (Route) => false);
              }
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Container(),
    );
  }
}
