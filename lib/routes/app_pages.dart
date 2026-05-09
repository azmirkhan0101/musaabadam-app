import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:musaab_adam/modules/home/screens/message_screen.dart';
import 'package:musaab_adam/modules/main_nav/bindings/main_nav_binding.dart';
import 'package:musaab_adam/modules/profile/screens/preferences_screen.dart';
import 'package:musaab_adam/modules/profile/screens/privacy_policy_screen.dart';
import 'package:musaab_adam/modules/profile/screens/sales_tax_exemption.dart';
import 'package:musaab_adam/modules/profile/screens/user_reports_screen.dart';

import '../modules/auth/screens/check_email_screen.dart';
import '../modules/auth/screens/forgot_password_screen.dart';
import '../modules/auth/screens/new_password_screen.dart';
import '../modules/auth/screens/profile_setup_screen.dart';
import '../modules/auth/screens/signin_screen.dart';
import '../modules/auth/screens/signup_screen.dart';
import '../modules/profile/screens/account_health_screen.dart';
import '../modules/profile/screens/my_rewards_screen.dart';
import '../modules/profile/screens/update_profile_screen.dart';
import '../modules/profile/screens/new_address_screen.dart';
import '../screens/add_payment_method_screen/add_payment_method_screen.dart';
import '../modules/profile/screens/addresses_screen.dart';
import '../screens/boost_screen/boost_screen.dart';
import '../screens/contact_us_screens/account_information_update_screen/account_information_update_screen.dart';
import '../screens/contact_us_screens/account_issues_screen/account_issues_screen.dart';
import '../modules/profile/screens/contact_us_screen.dart';
import '../screens/contact_us_screens/general_issues_screen/general_issues_screen.dart';
import '../screens/contact_us_screens/payout_screen/payout_screen.dart';
import '../modules/auth/screens/account_verified_screen.dart';
import '../modules/auth/screens/link_expired_screen.dart';
import '../modules/auth/screens/verify_email_screen.dart';
import '../screens/error_screen/error_screen.dart';
import '../modules/home/screens/archive_screen.dart';
import '../modules/home/screens/inbox_screen.dart';
import '../modules/home/screens/invite_screen.dart';
import '../modules/home/screens/message_request_screen.dart';
import '../modules/home/screens/notification_screen.dart';
import '../screens/livestream_screens/livestream_screen/livestream_screen.dart';
import '../modules/main_nav/screens/main_nav_screen.dart';
import '../modules/home/screens/notification_settings_screen.dart';
import '../modules/profile/screens/order_support_screen.dart';
import '../modules/profile/screens/profile_screen.dart';
import '../screens/send_tip_screen/send_tip_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [

    //===================AUTH====================
    GetPage(name: AppRoutes.signInScreen, page: () => SignInScreen()),
    GetPage(name: AppRoutes.signUpScreen, page: () => SignUpScreen()),
    GetPage(name: AppRoutes.profileSetupScreen, page: () => ProfileSetupScreen()),
    GetPage(name: AppRoutes.forgotPasswordScreen, page: () => ForgotPasswordScreen()),
    GetPage(name: AppRoutes.checkEmailScreen, page: () => CheckEmailScreen()),
    GetPage(name: AppRoutes.newPasswordScreen, page: () => NewPasswordScreen()),
    GetPage(name: AppRoutes.verifyEmailScreen, page: () => VerifyEmailScreen()),
    GetPage(name: AppRoutes.linkExpiredScreen, page: () => LinkExpiredScreen()),
    GetPage(name: AppRoutes.accountVerifiedScreen, page: () => AccountVerifiedScreen()),

    //===================MAIN====================
    GetPage(name: AppRoutes.mainScreen, page: () => MainNavScreen(), binding: MainNavBinding()),

    //===================MESSAGING====================
    GetPage(name: AppRoutes.inboxScreen, page: () => InboxScreen()),
    GetPage(name: AppRoutes.messageScreen, page: () => MessageScreen()),
    GetPage(name: AppRoutes.messageRequestScreen, page: () => MessageRequestScreen()),
    GetPage(name: AppRoutes.archiveScreen, page: () => ArchiveScreen()),

    //===================NOTIFICATIONS====================
    GetPage(name: AppRoutes.notificationScreen, page: () => NotificationScreen()),
    GetPage(name: AppRoutes.notificationSettingsScreen, page: () => NotificationSettingsScreen()),

    //===================FEATURES====================
    GetPage(name: AppRoutes.inviteScreen, page: () => InviteScreen()),
    GetPage(name: AppRoutes.livestreamScreen, page: () => LiveStreamScreen()),
    GetPage(name: AppRoutes.boostScreen, page: () => BoostScreen()),

    //===================PAYMENTS & REWARDS====================
    GetPage(name: AppRoutes.sendTipScreen, page: () => SendTipScreen()),
    GetPage(name: AppRoutes.addPaymentMethodScreen, page: () => AddPaymentMethodScreen()),
    GetPage(name: AppRoutes.payoutScreen, page: () => PayoutScreen()),
    GetPage(name: AppRoutes.myRewardsScreen, page: () => MyRewardsScreen()),

    //===================PROFILE====================
    GetPage(name: AppRoutes.profileScreen, page: () => ProfileScreen()),
    GetPage(name: AppRoutes.updateProfileScreen, page: () => UpdateProfileScreen()),
    GetPage(name: AppRoutes.accountHealthScreen, page: () => AccountHealthScreen()),
    GetPage(name: AppRoutes.preferencesScreen, page: () => PreferencesScreen()),
    GetPage(name: AppRoutes.accountInformationUpdateScreen, page: () => AccountInformationUpdateScreen()),
    GetPage(name: AppRoutes.salesTaxExemptionScreen, page: () => SalesTaxExemptionScreen()),
    GetPage(name: AppRoutes.userReports, page: () => UserReportsScreen()),

    //===================ADDRESS====================
    GetPage(name: AppRoutes.newAddressScreen, page: () => NewAddressScreen()),
    GetPage(name: AppRoutes.addressesScreen, page: () => AddressesScreen()),

    //===================SUPPORT====================
    GetPage(name: AppRoutes.privacyPolicy, page: () => PrivacyPolicyScreen()),
    GetPage(name: AppRoutes.orderSupportScreen, page: () => OrderSupportScreen()),
    GetPage(name: AppRoutes.contactUsScreen, page: () => ContactUsScreen()),
    GetPage(name: AppRoutes.accountIssuesScreen, page: () => AccountIssuesScreen()),
    GetPage(name: AppRoutes.generalIssuesScreen, page: () => GeneralIssuesScreen()),

    //===================MISC====================
    GetPage(name: AppRoutes.errorScreen, page: () => ErrorScreen())
  ];
}