import 'package:app_payment/views/login_view.dart';
import 'package:app_payment/views/my_account_view.dart';
import 'package:app_payment/views/splash_view.dart';
import 'package:flutter/material.dart';

class MyAppPayment extends StatelessWidget {
  const MyAppPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashView(),
        '/login': (context) => const LoginView(),
        '/account': (context) => const MyAccountView(),
      },
    );
  }
}
