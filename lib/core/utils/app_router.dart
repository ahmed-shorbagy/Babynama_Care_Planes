import 'package:assignment_app/features/Purchase/presentation/views/payment_details_view.dart';
import 'package:assignment_app/features/Purchase/presentation/views/thank_you_view.dart';
import 'package:assignment_app/features/home/presentation/views/Home_view.dart';
import 'package:assignment_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHOmeView = '/HomeView';
  static const kPurchseView = '/PuchseView';
  static const kThankYouView = '/ThankYouView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SPlashView(),
    ),
    GoRoute(
      path: kHOmeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kPurchseView,
      builder: (context, state) => const PaymentDetails(),
    ),
    GoRoute(
      path: kThankYouView,
      builder: (context, state) => const ThanksView(),
    ),
  ]);
}
