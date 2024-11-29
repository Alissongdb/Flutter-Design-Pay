import 'package:flutter/material.dart';

class PadraoBtnVerdeWidget extends StatefulWidget {
  final String btnText;
  const PadraoBtnVerdeWidget({
    super.key,
    required this.btnText,
  });

  @override
  State<PadraoBtnVerdeWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<PadraoBtnVerdeWidget> {
  _TextFieldWidgetState();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.green),
        gradient: const LinearGradient(
          colors: [Colors.greenAccent, Colors.lightGreen],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: InkWell(
          onTap: null,
          child: Text(
            widget.btnText,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
