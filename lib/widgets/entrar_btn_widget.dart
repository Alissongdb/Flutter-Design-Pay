import 'package:flutter/material.dart';

class EntrarBtnWidget extends StatefulWidget {
  final VoidCallback onPressed; // Adicionando o parâmetro onPressed

  const EntrarBtnWidget({
    super.key,
    required this.onPressed, // Requer que o parâmetro onPressed seja fornecido
  });

  @override
  State<EntrarBtnWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<EntrarBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.green),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, elevation: 5),
        onPressed:
            widget.onPressed,  // Usando o onPressed passado como parâmetro
        child: const Text(
          'Entrar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
