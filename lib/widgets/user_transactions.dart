import 'package:expenses_app/models/transaction.dart';
import 'package:expenses_app/widgets/new_transaction.dart';
import 'package:expenses_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

//NOT BEING USED ANYMORE
class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Macbook Pro 16 inches 2021',
      amount: 260.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Romantic Dinner with Margarita',
      amount: 100.23,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1123',
      title: 'Socks',
      amount: 150.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1312',
      title: 'test',
      amount: 150.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1123',
      title: 'test',
      amount: 150.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't111',
      title: 'test',
      amount: 150.55,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
