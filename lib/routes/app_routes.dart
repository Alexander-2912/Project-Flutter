import 'package:flutter/material.dart';
import 'package:RideFlow/presentation/main_screen_page/main_screen_page.dart';
import 'package:RideFlow/presentation/login_screen/login_screen.dart';
import 'package:RideFlow/presentation/e_wallet_transaction_history_screen/e_wallet_transaction_history_screen.dart';
import 'package:RideFlow/presentation/e_wallet_transaction_details_screen/e_wallet_transaction_details_screen.dart';
import 'package:RideFlow/presentation/register_screen/register_screen.dart';
import 'package:RideFlow/presentation/inbox_screen/inbox_screen.dart';
import 'package:RideFlow/presentation/e_wallet_contact_transfer_screen/e_wallet_contact_transfer_screen.dart';
import 'package:RideFlow/presentation/promos_screen/promos_screen.dart';
import 'package:RideFlow/presentation/subscribe_screen/subscribe_screen.dart';
import 'package:RideFlow/presentation/e_wallet_bank_transfer_screen/e_wallet_bank_transfer_screen.dart';
import 'package:RideFlow/presentation/e_wallet_points_screen/e_wallet_points_screen.dart';
class AppRoutes {
  static const String orderScreen = '/order_screen';

  static const String afterOrderScreen = '/after_order_screen';

  static const String settingScreen = '/setting_screen';

  static const String profileScreen = '/profile_screen';

  static const String helpScreen = '/help_screen';

  static const String eWalletPointsScreen = '/e_wallet_points_screen';

  static const String loginScreen = '/login_screen';

  static const String mainScreenPage = '/main_screen_page';

  static const String eWalletMainScreen = '/e_wallet_main_screen';

  static const String eWalletTransactionHistoryScreen =
      '/e_wallet_transaction_history_screen';

  static const String eWalletTransactionDetailsScreen =
      '/e_wallet_transaction_details_screen';

  static const String chatScreen = '/chat_screen';

  static const String registerScreen = '/register_screen';

  static const String promosScreen = '/promos_tab_container_screen';

  static const String inboxScreen = '/inbox_screen';

  static const String subscribeScreen =
      '/subscribe_screen';

  static const String eWalletTopupScreen = '/e_wallet_topup_screen';

  static const String eWalletContactTransferScreen =
      '/e_wallet_contact_transfer_screen';

  static const String eWalletBankTransferScreen =
      '/e_wallet_bank_transfer_screen';

  static const String eWalletSuccessPaymentScreen =
      '/e_wallet_success_payment_screen';

  static const String eWalletCreditCardScreen = '/e_wallet_credit_card_screen';

  static Map<String, WidgetBuilder> routes = {
    mainScreenPage: (context) => MainScreenPage(),
    loginScreen: (context) => LoginScreen(),
    eWalletTransactionHistoryScreen: (context) => EWalletTransactionHistoryScreen(),
    eWalletTransactionDetailsScreen: (context) => EWalletTransactionDetailsScreen(),
    registerScreen: (context) => RegisterScreen(),
    promosScreen: (context) => PromosScreen(),
    inboxScreen: (context) => InboxScreen(),
    subscribeScreen: (context) => SubscribeScreen(),
    eWalletBankTransferScreen: (context) => EWalletBankTransferScreen(),
    eWalletContactTransferScreen: (context) => EWalletContactTransferScreen(),
    eWalletPointsScreen: (context) => EWalletPointsScreen(),
  };
}