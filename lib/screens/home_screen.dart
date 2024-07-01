import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:invest_1_app/providers/investment_provider.dart';
import 'package:invest_1_app/widgets/investment_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Investment Opportunities')),
      body: FutureBuilder(
        future: Provider.of<InvestmentProvider>(context, listen: false)
            .fetchInvestments(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.error != null) {
            return const Center(child: Text('An error occurred!'));
          } else {
            return Consumer<InvestmentProvider>(
              builder: (ctx, investmentProvider, _) => ListView.builder(
                itemCount: investmentProvider.investments.length,
                itemBuilder: (ctx, i) => InvestmentItem(
                    investment: investmentProvider.investments[i]),
              ),
            );
          }
        },
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:invest_1_app/providers/investment_provider.dart';
// import 'package:invest_1_app/widgets/investment_item.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Investment Opportunities')),
//       body: FutureBuilder(
//         future: Provider.of<InvestmentProvider>(context, listen: false)
//             .fetchInvestments(),
//         builder: (ctx, snapshot) =>
//             snapshot.connectionState == ConnectionState.waiting
//                 ? const Center(child: CircularProgressIndicator())
//                 : Consumer<InvestmentProvider>(
//                     builder: (ctx, investmentProvider, _) => ListView.builder(
//                       itemCount: investmentProvider.investments.length,
//                       itemBuilder: (ctx, i) => InvestmentItem(
//                           investment: investmentProvider.investments[i]),
//                     ),
//                   ),
//       ),
//     );
//   }
// }
