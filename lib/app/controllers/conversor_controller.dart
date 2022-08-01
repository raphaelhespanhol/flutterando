import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class ConversorController {
  late List<CurrencyModel> currencies;

  late TextEditingController fromText;
  late TextEditingController toText;

  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;

  ConversorController() {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = fromText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }
}
