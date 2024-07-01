import 'package:flutter/material.dart';
import 'package:invest_1_app/models/investment.dart';

class InvestmentDetailScreen extends StatelessWidget {
  final Investment investment;

  const InvestmentDetailScreen({super.key, required this.investment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(investment.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              investment.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Text(investment.description),
            const SizedBox(height: 10),
            Text('Link: ${investment.link}'),
          ],
        ),
      ),
    );
  }
}
