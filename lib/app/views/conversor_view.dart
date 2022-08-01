import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConversorView extends StatelessWidget {
  const ConversorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
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
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton(
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.blue,
                          ),
                          items: ['Real', 'Dolar', 'Euro'].map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                  ],
                ),
              ),
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
