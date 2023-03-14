import 'package:flutter/material.dart';
import '../core/helpers/default.dart';

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
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 311,
          height: 100,
          child: TextField(
            enableSuggestions: true,
            textInputAction: TextInputAction.done,
            maxLines: 2,
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
