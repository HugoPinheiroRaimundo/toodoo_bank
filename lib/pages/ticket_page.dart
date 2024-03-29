import 'package:flutter/material.dart';
import '../core/default.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPage();
}

class _TicketPage extends State<TicketPage> {
  bool _isButtonEnabled = false;
  final TextEditingController _controller = TextEditingController();

  String? _validateBoleto(String value) {
    // Regex para validar número de boleto
    RegExp regex = RegExp(r'^[0-9]{47}$');

    if (!regex.hasMatch(value)) {
      return 'Boleto inválido';
    }

    return null;
  }

  void _updateButtonState(String text) {
    setState(() {
      _isButtonEnabled = text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 80, left: 30),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Pagamentos",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 40),
            child: Text(
              "Digite o código do\nboleto para pagamento",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: 311,
            height: 100,
            child: TextFormField(
              textInputAction: TextInputAction.send,
              controller: _controller,
              onChanged: (text) => _updateButtonState(text),
              maxLines: 2,
              decoration: InputDecoration(
                  errorStyle: TextStyle(color: DefaultConfig.alertError),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: DefaultConfig.alertError)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: DefaultConfig.alertError)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: DefaultConfig.alertError))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'O código informado é inválido.';
                }
                //  CallApi().isValidBarCode(value.replaceAll(RegExp('[. ]'), ''));
                //  return null;
              },
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/");
            },
            style: TextButton.styleFrom(primary: Colors.indigo),
            child: const Text(
              "Usar leitor de código",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 56,
            width: 311,
            child: ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                      Navigator.pushNamed(context, '/ticketconfirmpage');
                    }
                  : null,
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(
                    _isButtonEnabled
                        ? DefaultConfig.defaultThemeColor
                        : Colors.grey,
                  )),
              child: const Text(
                "Continuar",
              ),
            ),
          )
        ],
      ),
    ));
  }
}
