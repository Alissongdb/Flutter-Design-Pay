import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText; // Adiciona o parâmetro para o hint text

  const TextFieldWidget({super.key, required this.hintText});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.green),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10),
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Preencha este campo';
          }
          return null;
        },
      ),
    );
  }
}
