import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:invest_1_app/models/investment.dart';

class InvestmentService {
  static Future<List<Investment>> fetchInvestments() async {
    final response =
        await http.get(Uri.parse('https://api.example.com/investments'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((item) => Investment(
                title: item['title'],
                description: item['description'],
                link: item['link'],
              ))
          .toList();
    } else {
      throw Exception('Failed to load investments');
    }
  }
}
