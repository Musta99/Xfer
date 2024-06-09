import 'package:flutter/material.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/check_email_message.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/email_confirmation_screen.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/email_verification_1.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/forget_password_screen.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/sign_in_screen.dart';
import 'package:xfer_web/Screens/AccountCreationScreen/sign_up_screen.dart';
import 'package:xfer_web/Screens/Dasboard/dashboard_screen.dart';
import 'package:xfer_web/Screens/HomeScreen/home_screen.dart';
import 'package:xfer_web/Screens/SettingsScreen/settings_screen.dart';
import 'package:xfer_web/Screens/TransactionConfirmationScreen/transaction_confirmation_1.dart';
import 'package:xfer_web/Screens/TransactionConfirmationScreen/transaction_confirmation_2.dart';
import 'package:xfer_web/Screens/TransactionConfirmationScreen/transaction_confirmation_3.dart';
import 'package:xfer_web/Screens/address_Screen.dart';
import 'package:xfer_web/Screens/depositors_fund_screen.dart';
import 'package:xfer_web/Screens/help_screen.dart';
import 'package:xfer_web/Screens/notification_screen.dart';
import 'package:xfer_web/Screens/profile_screen.dart';
import 'package:xfer_web/Screens/recepients_details.dart';
import 'package:xfer_web/Screens/tranfer_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
