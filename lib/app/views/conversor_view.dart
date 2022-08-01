import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/currency_box.dart';

class ConversorView extends StatelessWidget {
  const ConversorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/conversor.png',
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CurrencyBox(),
              SizedBox(
                height: 10,
              ),
              CurrencyBox(),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
