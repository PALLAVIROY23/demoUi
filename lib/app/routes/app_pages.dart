import 'package:get/get.dart';

import '../modules/BrokerSignUpScreen/bindings/broker_sign_up_screen_binding.dart';
import '../modules/BrokerSignUpScreen/views/broker_sign_up_screen_view.dart';
import '../modules/CompanyDetails/bindings/company_details_binding.dart';
import '../modules/CompanyDetails/views/company_details_view.dart';
import '../modules/CompleteKycScreen/bindings/complete_kyc_screen_binding.dart';
import '../modules/CompleteKycScreen/views/complete_kyc_screen_view.dart';
import '../modules/DocumentUploadScreen/bindings/document_upload_screen_binding.dart';
import '../modules/DocumentUploadScreen/views/document_upload_screen_view.dart';
import '../modules/InvestorSignUpScreen/bindings/investor_sign_up_screen_binding.dart';
import '../modules/InvestorSignUpScreen/views/investor_sign_up_screen_view.dart';
import '../modules/OtpVerificationScreen/bindings/otp_verification_screen_binding.dart';
import '../modules/OtpVerificationScreen/views/otp_verification_screen_view.dart';
import '../modules/PersonaDetailScreen/bindings/persona_detail_screen_binding.dart';
import '../modules/PersonaDetailScreen/views/persona_detail_screen_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/selectBrokerScreen/bindings/select_broker_screen_binding.dart';
import '../modules/selectBrokerScreen/views/select_broker_screen_view.dart';
import '../modules/selectInvesterBrokerScreen/bindings/select_invester_broker_screen_binding.dart';
import '../modules/selectInvesterBrokerScreen/views/select_invester_broker_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_BROKER_SCREEN,
      page: () => const SelectBrokerScreenView(),
      binding: SelectBrokerScreenBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_INVESTER_BROKER_SCREEN,
      page: () => const SelectInvesterBrokerScreenView(),
      binding: SelectInvesterBrokerScreenBinding(),
    ),
    GetPage(
      name: _Paths.INVESTOR_SIGN_UP_SCREEN,
      page: () => const InvestorSignUpScreenView(),
      binding: InvestorSignUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.BROKER_SIGN_UP_SCREEN,
      page: () => const BrokerSignUpScreenView(),
      binding: BrokerSignUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.PERSONA_DETAIL_SCREEN,
      page: () => const PersonaDetailScreenView(),
      binding: PersonaDetailScreenBinding(),
    ),
    GetPage(
      name: _Paths.COMPANY_DETAILS,
      page: () => const CompanyDetailsView(),
      binding: CompanyDetailsBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENT_UPLOAD_SCREEN,
      page: () => const DocumentUploadScreenView(),
      binding: DocumentUploadScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION_SCREEN,
      page: () => const OtpVerificationScreenView(),
      binding: OtpVerificationScreenBinding(),
    ),
    GetPage(
      name: _Paths.COMPLETE_KYC_SCREEN,
      page: () => const CompleteKycScreenView(),
      binding: CompleteKycScreenBinding(),
    ),
  ];
}
