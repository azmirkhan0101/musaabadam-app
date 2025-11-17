import 'package:get/get.dart';
import 'package:musaab_adam/screens/account_screens/my_rewards_screen/my_rewards_screen.dart';
import 'package:musaab_adam/screens/account_screens/update_profile_screen/update_profile_screen.dart';
import 'package:musaab_adam/screens/add_payment_method_screen/add_payment_method_screen.dart';
import 'package:musaab_adam/screens/address_screen/address_screen.dart';
import 'package:musaab_adam/screens/auth_screens/check_email_screen/check_email_screen.dart';
import 'package:musaab_adam/screens/auth_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:musaab_adam/screens/auth_screens/new_password_screen/new_password_screen.dart';
import 'package:musaab_adam/screens/auth_screens/profile_setup_screen/profile_setup_screen.dart';
import 'package:musaab_adam/screens/auth_screens/signin_screen/signin_screen.dart';
import 'package:musaab_adam/screens/auth_screens/signup_screen/signup_screen.dart';
import 'package:musaab_adam/screens/boost_screen/boost_screen.dart';
import 'package:musaab_adam/screens/email_verification_screens/account_verified_screen/account_verified_screen.dart';
import 'package:musaab_adam/screens/email_verification_screens/link_expired_screen/link_expired_screen.dart';
import 'package:musaab_adam/screens/email_verification_screens/verify_email_screen/verify_email_screen.dart';
import 'package:musaab_adam/screens/error_screen/error_screen.dart';
import 'package:musaab_adam/screens/home_screens/archive_screen/archive_screen.dart';
import 'package:musaab_adam/screens/home_screens/inbox_screen/inbox_screen.dart';
import 'package:musaab_adam/screens/home_screens/invite_screen/invite_screen.dart';
import 'package:musaab_adam/screens/home_screens/message_request_screen/message_request_screen.dart';
import 'package:musaab_adam/screens/home_screens/notification_screen/notification_screen.dart';
import 'package:musaab_adam/screens/livestream_screens/livestream_screen/livestream_screen.dart';
import 'package:musaab_adam/screens/main_screen/main_screen.dart';
import 'package:musaab_adam/screens/send_tip_screen/send_tip_screen.dart';

part '../app_routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SIGNIN_SCREEN,
      page: () {
        return SignInScreen();
      },
    ),
    GetPage(
      name: AppRoutes.SIGNUP_SCREEN,
      page: () {
        return SignUpScreen();
      },
    ),
    GetPage(
      name: AppRoutes.PROFILE_SETUP_SCREEN,
      page: () {
        return ProfileSetupScreen();
      },
    ),
    GetPage(
      name: AppRoutes.FORGOT_PASSWORD_SCREEN,
      page: () {
        return ForgotPasswordScreen();
      },
    ),
    GetPage(
      name: AppRoutes.CHECK_EMAIL_SCREEN,
      page: () {
        return CheckEmailScreen();
      },
    ),
    GetPage(
      name: AppRoutes.NEW_PASSWORD_SCREEN,
      page: () {
        return NewPasswordScreen();
      },
    ),
    GetPage(
      name: AppRoutes.VERIFY_EMAIL_SCREEN,
      page: () {
        return VerifyEmailScreen();
      },
    ),
    GetPage(
      name: AppRoutes.LINK_EXPIRED_SCREEN,
      page: () {
        return LinkExpiredScreen();
      },
    ),
    GetPage(
      name: AppRoutes.ACCOUNT_VERIFIED_SCREEN,
      page: () {
        return AccountVerifiedScreen();
      },
    ),
    GetPage(
      name: AppRoutes.MAIN_SCREEN,
      page: () {
        return MainScreen();
      },
    ),
    GetPage(
      name: AppRoutes.INBOX_SCREEN,
      page: () {
        return InboxScreen();
      },
    ),
    GetPage(
      name: AppRoutes.MESSAGE_REQUEST_SCREEN,
      page: () {
        return MessageRequestScreen();
      },
    ),
    GetPage(
      name: AppRoutes.ARCHIVE_SCREEN,
      page: () {
        return ArchiveScreen();
      },
    ),
    GetPage(
      name: AppRoutes.NOTIFICATION_SCREEN,
      page: () {
        return NotificationScreen();
      },
    ),
    GetPage(
      name: AppRoutes.INVITE_SCREEN,
      page: () {
        return InviteScreen();
      },
    ),
    GetPage(
        name: AppRoutes.LIVESTREAM_SCREEN,
        page: (){
      return LivestreamScreen();
    }),
    GetPage(
        name: AppRoutes.ADDRESS_SCREEN,
        page: (){
          return AddressScreen();
        }),
    GetPage(
        name: AppRoutes.BOOST_SCREEN,
        page: (){
          return BoostScreen();
        }),
    GetPage(
        name: AppRoutes.SEND_TIP_SCREEN,
        page: (){
          return SendTipScreen();
        }),
    GetPage(
        name: AppRoutes.ADD_PAYMENT_METHOD_SCREEN,
        page: (){
          return AddPaymentMethodScreen();
        }),
    GetPage(
        name: AppRoutes.ERROR_SCREEN,
        page: (){
          return ErrorScreen();
        }),
    GetPage(
        name: AppRoutes.MY_REWARDS_SCREEN,
        page: (){
          return MyRewardsScreen();
        }),
    GetPage(
        name: AppRoutes.UPDATE_PROFILE_SCREEN,
        page: (){
          return UpdateProfileScreen();
        }),
  ];
}
