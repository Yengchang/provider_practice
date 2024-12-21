import 'package:flutter/material.dart';
import 'package:provider_app/Widgets/add_transaction.dart';
import 'package:provider_app/Widgets/summeart_card.dart';
import 'package:provider_app/Widgets/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SummuryCard(),
          Expanded(
            child: TransactionList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => const AddTransaction(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
