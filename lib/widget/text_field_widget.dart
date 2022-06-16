import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    Key? key,
    required this.label,
    required this.hinText,
    required this.textController,
  }) : super(key: key);

  final String label;
  final String hinText;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: textController,
          decoration: InputDecoration(
            hintText: hinText,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
