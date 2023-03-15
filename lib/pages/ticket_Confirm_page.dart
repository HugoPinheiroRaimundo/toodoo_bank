import 'package:flutter/material.dart';
import '../core/default.dart';

class TicketConfirm extends StatefulWidget {
  const TicketConfirm({super.key});

  @override
  State<TicketConfirm> createState() => _TicketConfirmState();
}

class _TicketConfirmState extends State<TicketConfirm> {
  bool isObscured = true;

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
                    width: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Novo Pagamentos",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text("Saldo atual",
                      style: TextStyle(
                          color: DefaultConfig.defaultColorText, fontSize: 14)),
                ),
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: isObscured ? "" : "R\$ ",
                            style: TextStyle(
                                fontSize: 21,
                                color: DefaultConfig.defaultColorText),
                            children: [
                          TextSpan(
                              text: isObscured ? "•••••••" : "16.927,00",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: DefaultConfig.defaultColorText))
                        ])),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                        icon: isObscured
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off))
                  ],
                ),
                Divider(),
                const Padding(
                  padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
                  child: Text(
                    "Dados do seu boleto",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
