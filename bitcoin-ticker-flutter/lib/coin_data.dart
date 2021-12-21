import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'CAD',
  'EUR',
  'GBP',
  'JPY',
  'NZD',
  'PLN',
  'RUB',
  'USD',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<int> getPairPrice(String coin, String currency) async {
    http.Response res = await http.get(Uri.parse(
        'https://rest.coinapi.io/v1/exchangerate/$coin/$currency?apikey=D25BDCF5-9783-4C55-8FA0-8BC9115E52BB'));
    int price = jsonDecode(res.body)["rate"].toInt();
    return price;
  }
}
