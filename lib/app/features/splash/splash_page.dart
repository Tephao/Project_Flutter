import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:puc_minas/app/core/constants/app_assets.dart';
import 'package:puc_minas/app/core/constants/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.logo)
                .animate(
                  onComplete: (controller) => controller.repeat(reverse: true),
                )
                .shimmer(
                  color: Colors.white,
                  duration: 2.seconds,
                ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.login);
              },
              child: Text('ENTRAR'),
            ).animate().scaleXY(
                  begin: 0,
                  end: 1.5,
                  duration: 2.seconds,
                )
          ],
        ),
      ),
    );
  }
}
