import 'package:flutter/material.dart';
import 'package:invest_1_app/models/investment.dart';
import 'package:invest_1_app/services/investment_service.dart';

class InvestmentProvider with ChangeNotifier {
  List<Investment> _investments = [];

  List<Investment> get investments => _investments;

  Future<void> fetchInvestments() async {
    _investments = await InvestmentService.fetchInvestments();
    notifyListeners();
  }
}
