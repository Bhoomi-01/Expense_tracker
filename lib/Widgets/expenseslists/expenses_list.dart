import 'package:expense_tracker/Widgets/expenseslists/expense_item.dart';
import 'package:expense_tracker/models/expense_data.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenseslist, required this.onRemoveExpense});

  final List<Expense> expenseslist;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenseslist.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenseslist[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.7),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
            vertical: 16,
          ),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenseslist[index]);
        },
        child: ExpenseItem(expenseslist[index]),
      ),
    );
  }
}
