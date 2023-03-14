import 'package:flutter/material.dart';
import 'package:toodoo_bank/components/custom_text.dart';

class TicketConfirm extends StatefulWidget {
  const TicketConfirm({super.key});

  @override
  State<TicketConfirm> createState() => _TicketConfirmState();
}

class _TicketConfirmState extends State<TicketConfirm> {
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                CustomText(
                  normalText: "Saldo atual",
                  fontSize: 12,
                  isBold: false,
                  isGray: true,
                ),
                Text("R 16.937,00  "),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 24,
                ),
                CustomText(
                    normalText: "Dados do seu boleto",
                    fontSize: 16,
                    isGray: true,
                    isBold: true)
              ],
            ),
          )
        ],
      )),
    );
  }
}
