import 'package:flutter/material.dart';
import 'package:invest_1_app/models/investment.dart';
import 'package:invest_1_app/screens/investment_detail_screen.dart';

class InvestmentItem extends StatelessWidget {
  final Investment investment;

  const InvestmentItem({super.key, required this.investment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(investment.title),
      subtitle: Text(investment.description),
      onTap: () {
        // Переход на страницу с деталями инвестиции
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  InvestmentDetailScreen(investment: investment),
            ));
      },
    );
  }
}
