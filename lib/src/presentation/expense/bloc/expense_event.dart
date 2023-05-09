part of 'expense_bloc.dart';

@immutable
abstract class ExpenseEvent extends Equatable {
  const ExpenseEvent();

  @override
  List<Object> get props => [];
}

class FetchExpenseFromIdEvent extends ExpenseEvent {
  final String? expenseId;

  const FetchExpenseFromIdEvent(this.expenseId);
}

class AddOrUpdateExpenseEvent extends ExpenseEvent {
  final bool isAdding;

  const AddOrUpdateExpenseEvent(this.isAdding);
}

class ClearExpenseEvent extends ExpenseEvent {
  final String expenseId;

  const ClearExpenseEvent(this.expenseId);
}

class ChangeExpenseEvent extends ExpenseEvent {
  final TransactionType transactionType;

  const ChangeExpenseEvent(this.transactionType);
}

class ChangeRecurringEvent extends ExpenseEvent {
  final RecurringType recurringType;

  const ChangeRecurringEvent(this.recurringType);
}

class AddRecurringEvent extends ExpenseEvent {
  const AddRecurringEvent();
}

class ChangeCategoryEvent extends ExpenseEvent {
  final Category category;

  const ChangeCategoryEvent(this.category);
}

class ChangeAccountEvent extends ExpenseEvent {
  final Account account;

  const ChangeAccountEvent(this.account);
}

class UpdateDateTimeEvent extends ExpenseEvent {
  final DateTime dateTime;

  const UpdateDateTimeEvent(this.dateTime);

  @override
  List<Object> get props => [dateTime];
}

class TransferAccountsEvent extends ExpenseEvent {
  final List<Account> accounts;
  final Account fromAccount, toAccount;

  const TransferAccountsEvent(
    this.accounts,
    this.fromAccount,
    this.toAccount,
  );

  @override
  List<Object> get props => [accounts, fromAccount, toAccount];
}
