part of 'app_pages.dart';

class AppRoutes {
  AppRoutes._();

  //===================MAIN====================
  static final mainScreen = "/main-screen";

  //===================AUTH====================
  static final signInScreen = "/signin-screen";
  static final signUpScreen = "/signup-screen";
  static final forgotPasswordScreen = "/forgot-password-screen";
  static final checkEmailScreen = "/check-email-screen";
  static final newPasswordScreen = "/new-password-screen";
  static final verifyEmailScreen = "/verify-email-screen";
  static final linkExpiredScreen = "/link-expired-screen";
  static final accountVerifiedScreen = "/account-verified-screen";

  //===================PROFILE====================
  static final profileSetupScreen = "/profile-setup-screen";
  static final profileScreen = "/profile-screen";
  static final updateProfileScreen = "/update-profile-screen";
  static final accountHealthScreen = "/account-health-screen";
  static final preferencesScreen = "/preferences-screen";
  static final accountInformationUpdateScreen = "/account-information-update-screen";
  static final salesTaxExemptionScreen = "/sales-tax-exemption-screen";
  static final userReports = "/user-reports";

  //===================MESSAGING====================
  static final inboxScreen = "/inbox-screen";
  static final messageScreen = "/message-screen";
  static final messageRequestScreen = "/message-request-screen";
  static final archiveScreen = "/archive-screen";

  //===================NOTIFICATIONS====================
  static final notificationScreen = "/notification-screen";
  static final notificationSettingsScreen = "/notification-settings-screen";

  //===================PAYMENTS & REWARDS====================
  static final sendTipScreen = "/send-tip-screen";
  static final addPaymentMethodScreen = "/add-payment-method-screen";
  static final payoutScreen = "/payout-screen";
  static final myRewardsScreen = "/my-rewards-screen";

  //===================ADDRESS====================
  static final newAddressScreen = "/new-address-screen";
  static final addressesScreen = "/addresses-screen";

  //===================SUPPORT====================
  static final privacyPolicy = "/privacy-policy";
  static final orderSupportScreen = "/order-support-screen";
  static final contactUsScreen = "/contact-us-screen";
  static final accountIssuesScreen = "/account-issues-screen";
  static final generalIssuesScreen = "/general-issues-screen";

  //===================FEATURES====================
  static final inviteScreen = "/invite-screen";
  static final livestreamScreen = "/livestream-screen";
  static final boostScreen = "/boost-screen";

  //===================MISC====================
  static final errorScreen = "/error-screen";
}