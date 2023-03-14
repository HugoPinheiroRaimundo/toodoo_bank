import 'package:flutter/material.dart';
import '../core/default.dart';

class CustomElevatedButton extends StatelessWidget {
  final String page;
  final String label;
  final bool isBold;

  const CustomElevatedButton(
      {Key? key, required this.page, required this.label, this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 311,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(page);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
                DefaultConfig.defaultThemeColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side:
                  BorderSide(color: DefaultConfig.defaultThemeColor, width: 2),
            ))),
        child: Text(label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
              //fontFamily: DefaultConfig.buttonFont
            )),
      ),
    );
  }
}
