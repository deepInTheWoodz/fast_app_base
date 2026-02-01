import 'package:ttoss/screen/main/tab/home/banks_dummy.dart';
import 'package:ttoss/screen/main/tab/home/vo/vo_bank_account.dart';

import '../../../../common/common.dart';
import 'vo/vo_bank.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 30000, accountTypeNmae: '신한');
final bankAccountShinhan2 = BankAccount(bankShinhan, 30000, accountTypeNmae: '저축예금');
final bankAccountShinhan3 = BankAccount(bankShinhan, 30000, accountTypeNmae: '저축예금');
final bankAccountTtoss = BankAccount(bankTtoss, 50000000000000);
final bankAccountKakao = BankAccount(bankKakao, 70000000000000, accountTypeNmae: '입출금통장');
