import 'package:ttoss/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  int balance;
  final String? accountTypeNmae;

  BankAccount(
    this.bank,
    this.balance, {
    this.accountTypeNmae,
  });
}
