import 'package:flutter/material.dart';

import '../Model/transaction.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];
  List<Transaction> get transaction => _transactions;
  //caluationg the total icome
  double get totalIcome => _transactions
      .where((tx) => tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
  // caluateiong the total expenses
  double get totalExpenses => _transactions
      .where((tx) => !tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
  //for the remaining balance
  double get remainingBalance => totalIcome - totalExpenses;
  //method to add an new transation
  void addTransaction(String title, double amount, bool isIncome) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
      isIncome: isIncome,
    );
    _transactions.insert(0, newTransaction);
    notifyListeners();
  }

  //method to remove
  void removeTransaction(String id) {
    _transactions.removeWhere((tx) => tx.id == id);
    notifyListeners();
  }
}
