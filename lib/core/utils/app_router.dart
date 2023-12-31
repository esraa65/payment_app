import 'package:go_router/go_router.dart';
import 'package:payment_app/features/chechout/presentation/views/my_card_view.dart';
import 'package:payment_app/features/chechout/presentation/views/payment_details_view.dart';
import 'package:payment_app/features/chechout/presentation/views/thankyou_view.dart';

abstract class AppRouter {
  static const paymentDetailsView = '/PaymentDetailsView';
  static const thankYouView = '/ThankYou';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyCardView(),
    ),
    GoRoute(
      path: paymentDetailsView,
      builder: (context, state) => const PaymentDetailsView(),
    ),
    GoRoute(
      path:thankYouView ,
      builder: (context, state) => const ThankYou(),
    ),
  ]);
}
