import 'dart:ffi';

import 'package:app_payment/widgets/padrao_btn_verde_widget.dart';
import 'package:flutter/material.dart';

class MyAccountView extends StatefulWidget {
  const MyAccountView({super.key});

  @override
  State<MyAccountView> createState() => _MyAccountViewState();
}

class _MyAccountViewState extends State<MyAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        backgroundImage: AssetImage('images/user.png'),
                      ),
                    ),
                    const Icon(
                      Icons.settings,
                      color: Colors.green,
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Alisson',
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Account ID',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Center(
              child: Text(
                '4187641274623',
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Saldo',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                'R\$ 1500.00',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Center(
                child: PadraoBtnVerdeWidget(
              btnText: 'Enviar',
            )),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: PadraoBtnVerdeWidget(
              btnText: 'Receber',
            )),
            const SizedBox(
              height: 40,
            ),
            Card(
              color: Colors.grey[50],
              child: Container(
                height: 40,
                child: const Row(
                  children: [
                    Text('ICmarkets'),
                    Spacer(),
                    Text('Credito'),
                    Spacer(),
                    Text(
                      '+\$90.72',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              color: Colors.grey[50],
              child: Container(
                height: 40,
                child: const Row(
                  children: [
                    Text('Skype'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Debito'),
                    ),
                    Spacer(),
                    Text(
                      '-\$12.00',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              color: Colors.grey[50],
              child: Container(
                height: 40,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Microsoft'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('Debito'),
                    ),
                    Spacer(),
                    Text(
                      '+\$35.00',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              color: Colors.grey[50],
              child: Container(
                height: 40,
                child: const Row(
                  children: [
                    Text('Store Bosco'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 13),
                      child: Text('Credito'),
                    ),
                    Spacer(),
                    Text(
                      '-\$97.20',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              color: Colors.grey[50],
              child: Container(
                height: 40,
                child: const Row(
                  children: [
                    Text('Lojao do Real'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 1, right: 20),
                      child: Text('Credito'),
                    ),
                    Spacer(),
                    Text(
                      '-\$10.00',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              color: Colors.grey[50],
              child: Container(
                height: 40,
                child: const Row(
                  children: [
                    Text('Mercado'),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Credito'),
                    ),
                    Spacer(),
                    Text(
                      '+\$25.70',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
