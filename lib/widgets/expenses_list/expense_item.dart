import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge, //here also . copywith can be used to make adjustments with the general theme set for this specific title.
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('Rs ${expense.amount.toStringAsFixed(2)}'),
                //toStringAsFixed(2) means if 12.67856 => 12.67
                const Spacer(),
                //Spacer takes all the space between text and row widget.
                Row(
                  //this extra row is used so as to group together category icon and date and push them to rightmost corner and push amount to lefttmost corner.
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
