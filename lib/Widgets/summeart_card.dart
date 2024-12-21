import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/Provider/transaction_provider.dart';

class SummuryCard extends StatelessWidget {
  const SummuryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Monthly Summary",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Income: \$${transactionProvider.totalIcome.toStringAsFixed(2)}",
                ),
                Text(
                  "Total Expenses: \$${transactionProvider.totalExpenses.toStringAsFixed(2)}",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Remaing Balance : \$${transactionProvider.remainingBalance.toStringAsFixed(2)}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
