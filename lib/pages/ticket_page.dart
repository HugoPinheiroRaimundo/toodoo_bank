import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPage();
}

class _TicketPage extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 80, left: 40),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
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
          const CustomTextField(
            label: "código de barras",
            hintText: "Digite aqui",
          ),
          const SizedBox(
            height: 352,
          ),
          const Text(
            "Usar leitor de código",
            style: TextStyle(
                fontSize: 18,
                color: Color(0xFF3D43CC),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomElevatedButton(
            label: "Continuar",
            page: "/ticketconfirmpage",
          )
        ],
      ),
    ));
  }
}
