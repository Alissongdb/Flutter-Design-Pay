import 'package:app_payment/widgets/entrar_btn_widget.dart';
import 'package:app_payment/widgets/padrao_btn_verde_widget.dart';
import 'package:app_payment/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey, // Associando o Form à chave
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.greenAccent, Colors.lightGreen],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                  ).createShader(bounds),
                  child: const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // TextFormField dentro do Form
              const TextFieldWidget(hintText: 'Login'),
              const SizedBox(height: 30),
              const TextFieldWidget(hintText: 'Senha'),
              const SizedBox(height: 30),
              // Passando o onPressed para o EntrarBtnWidget
              EntrarBtnWidget(
                onPressed: () {
                  // Validando o formulário
                  if (_formKey.currentState?.validate() ?? false) {
                    // Se o formulário for válido, navega para a próxima tela
                    Navigator.pushReplacementNamed(context, '/account');
                  } else {
                    // Se o formulário for inválido, você pode adicionar feedback visual aqui
                    print("Formulário inválido!");
                  }
                },
              ),
              const SizedBox(height: 80),
              const Divider(),
              const SizedBox(height: 30),
              const PadraoBtnVerdeWidget(
                btnText: 'Registrar',
              ),
              const SizedBox(height: 30),
              const Text(
                'Esqueceu sua senha?',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
