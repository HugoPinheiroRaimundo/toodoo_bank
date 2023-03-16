import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toodoo_bank/components/custom_button.dart';
import '../core/default.dart';

class TicketConfirm extends StatefulWidget {
  const TicketConfirm({super.key});

  @override
  State<TicketConfirm> createState() => _TicketConfirmState();
}

class _TicketConfirmState extends State<TicketConfirm> {
  bool isObscured = true;
  int _selectTile = 0;

  @override
  void initState() {
    super.initState();
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
                      width: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Novo Pagamentos",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mulish"),
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
                            color: DefaultConfig.defaultColorText,
                            fontSize: 14)),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Dados do seu boleto"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("R\$ 150,00"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Data do Vencimento"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("12/12/2022"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Beneficiário"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("COPASA Cia. de Tratamento de Água... "),
                      const Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Código de barras"),
                      Text(
                          "84670000001-7 43590024020-9 \n02405000243-5 84221010811-9"),
                      Divider(),
                      Text("Pagar em ")
                    ],
                  ),
                  ListTile(
                    title: const Text("Pagar agora"),
                    leading: Radio(
                        activeColor: Colors.blue,
                        value: 1,
                        groupValue: _selectTile,
                        onChanged: (value) {
                          setState(() {
                            _selectTile = value as int;
                          });
                        }),
                    trailing: Text(
                      "12/05/2020",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Agendar"),
                    leading: Radio(
                        activeColor: Colors.blue,
                        value: 1,
                        groupValue: _selectTile,
                        onChanged: (value) {
                          setState(() {
                            _selectTile = value as int;
                          });
                        }),
                    trailing: SvgPicture.asset("assets/icons/calenderIcon.svg"),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Descrição"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    height: 100,
                    child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: DefaultConfig.defaultTextFieldColor,
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: const OutlineInputBorder())),
                  ),
                  Center(
                      child: CustomElevatedButton(
                          page: "", label: "Realizar Pagamento")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
