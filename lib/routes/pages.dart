import 'package:flutter/material.dart';
import 'package:my_vnpt/category/view.dart';
import 'package:my_vnpt/confirm_payment/view.dart';
import 'package:my_vnpt/home_navigate/view.dart';
import 'package:my_vnpt/phone_package/phone_package.dart';
import 'package:my_vnpt/phone_package_detail/view.dart';
import 'package:my_vnpt/recharge_money/view.dart';
import 'package:my_vnpt/routes/routes.dart';

class Pages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.rechargeMoney:
        return MaterialPageRoute(
          builder: (_) {
            return const RechargeMoney();
          },
          settings: settings,
        );
      case RouteNames.confirmPayment:
        return MaterialPageRoute(
          builder: (_) {
            return const ConfirmPaymentScreen();
          },
          settings: settings,
        );
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (_) {
            return const HomeNavigateScreen();
          },
          settings: settings,
        );
      case RouteNames.packageDetail:
        final args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) {
            return PhonePackageDetailScreen(
              data: args is Map<String, dynamic> ? args['detail'] : null,
            );
          },
          settings: settings,
        );
      case RouteNames.category:
        return MaterialPageRoute(
          builder: (_) {
            return CategoryScreen();
          },
          settings: settings,
        );
      case RouteNames.packageMobile:
        return MaterialPageRoute(
          builder: (_) {
            return const PhonePackageScreen();
          },
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
