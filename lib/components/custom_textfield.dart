import 'package:flutter/material.dart';

import '../utils/default.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType inputType;

  const CustomTextField(
      {Key? key,
      required this.label,
      this.hintText = "",
      this.inputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 14
              //passar fonte do projeto aqui o estilo no caso
              ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 311,
          height: 76,
          child: TextField(
            maxLines: null,
            decoration: InputDecoration(
                filled: true,
                fillColor: DefaultConfig.defaultTextFieldColor,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey),
                border: const OutlineInputBorder()),
            keyboardType: inputType,
          ),
        ),
      ],
    );
  }
}
