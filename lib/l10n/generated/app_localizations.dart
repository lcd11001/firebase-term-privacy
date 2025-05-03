import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// The conventional newborn programmer greeting
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @developerName.
  ///
  /// In en, this message translates to:
  /// **'LCD Soft'**
  String get developerName;

  /// No description provided for @developerEmail.
  ///
  /// In en, this message translates to:
  /// **'lcd11001@gmail.com'**
  String get developerEmail;

  /// Slogan of company
  ///
  /// In en, this message translates to:
  /// **'🚀 Explore our innovative apps! From productivity tools to addictive games, we’ve got you covered. Discover the magic of {company} today! 🌟'**
  String slogan(String company);

  /// No description provided for @termsTitle1.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsTitle1;

  /// No description provided for @termsTitle2.
  ///
  /// In en, this message translates to:
  /// **'Changes to This Terms and Conditions'**
  String get termsTitle2;

  /// No description provided for @termsTitle3.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get termsTitle3;

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages or make derivative versions. The app itself, and all the trademarks, copyright, database rights, and other intellectual property rights related to it, still belong to {company}.'**
  String term1(String company);

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'{company} is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.'**
  String term2(String company);

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'The {app_title} app does not stores and processes personal data. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the {app_title} app won’t work properly or at all.'**
  String term3(String app_title);

  /// No description provided for @term4.
  ///
  /// In en, this message translates to:
  /// **'The app does use third party services that declare their own Terms and Conditions. Link to Terms and Conditions of third party service providers used by the app'**
  String get term4;

  /// No description provided for @term4_hyperlink.
  ///
  /// In en, this message translates to:
  /// **'◉ <a href=\'https://policies.google.com/terms\'>Google Play Services</a>'**
  String get term4_hyperlink;

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'You should be aware that there are certain things that {company} will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but {company} cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.'**
  String term5(String company);

  /// No description provided for @term6.
  ///
  /// In en, this message translates to:
  /// **'If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.'**
  String get term6;

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'Along the same lines, {company} cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, {company} cannot accept responsibility.'**
  String term7(String company);

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'With respect to {company}’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. {company} accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.'**
  String term8(String company);

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'At some point, we may wish to update the app. The app is currently available on Android and iOS – the requirements for both systems (and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. {company} does not promise that it will always update the app so that it is relevant to you and/or works with the Android & iOS version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.'**
  String term9(String company);

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'{company} may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. {company} will notify you of any changes by posting the new Terms and Conditions on this page. These changes are effective immediately after they are posted on this page.'**
  String term10(String company);

  /// https://api.flutter.dev/flutter/intl/DateFormat-class.html
  ///
  /// In en, this message translates to:
  /// **'These terms and conditions are effective as of {date}.'**
  String term11(DateTime date);

  /// Terms and Conditions
  ///
  /// In en, this message translates to:
  /// **'If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at {contact_email}.'**
  String term12(String contact_email);

  /// No description provided for @term12_hyperlink.
  ///
  /// In en, this message translates to:
  /// **'This Terms and Conditions page was generated by <a href=\'https://app-privacy-policy-generator.nisrulz.com/\'>App Privacy Policy Generator</a>.'**
  String get term12_hyperlink;

  /// No description provided for @privacyTitle1.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyTitle1;

  /// No description provided for @privacyTitle2.
  ///
  /// In en, this message translates to:
  /// **'Information Collection and Use'**
  String get privacyTitle2;

  /// No description provided for @privacyTitle3.
  ///
  /// In en, this message translates to:
  /// **'Log Data'**
  String get privacyTitle3;

  /// No description provided for @privacyTitle4.
  ///
  /// In en, this message translates to:
  /// **'Cookies'**
  String get privacyTitle4;

  /// No description provided for @privacyTitle5.
  ///
  /// In en, this message translates to:
  /// **'Service Providers'**
  String get privacyTitle5;

  /// No description provided for @privacyTitle6.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get privacyTitle6;

  /// No description provided for @privacyTitle7.
  ///
  /// In en, this message translates to:
  /// **'Links to Other Sites'**
  String get privacyTitle7;

  /// No description provided for @privacyTitle8.
  ///
  /// In en, this message translates to:
  /// **'Children’s Privacy'**
  String get privacyTitle8;

  /// No description provided for @privacyTitle9.
  ///
  /// In en, this message translates to:
  /// **'Changes to This Privacy Policy'**
  String get privacyTitle9;

  /// No description provided for @privacyTitle10.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get privacyTitle10;

  /// Privacy Policy
  ///
  /// In en, this message translates to:
  /// **'{company} built the {app_title} app as a free app. This SERVICE is provided by {company} at no cost and is intended for use as is.'**
  String privacy1(String company, String app_title);

  /// No description provided for @privacy2.
  ///
  /// In en, this message translates to:
  /// **'This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service'**
  String get privacy2;

  /// No description provided for @privacy3.
  ///
  /// In en, this message translates to:
  /// **'If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.'**
  String get privacy3;

  /// Privacy Policy
  ///
  /// In en, this message translates to:
  /// **'The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at {app_title} unless otherwise defined in this Privacy Policy.'**
  String privacy4(String app_title);

  /// No description provided for @privacy5.
  ///
  /// In en, this message translates to:
  /// **'{app_title} does not collect any personal infomation. The app does use third-party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app'**
  String privacy5(Object app_title);

  /// No description provided for @privacy6.
  ///
  /// In en, this message translates to:
  /// **'We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.'**
  String get privacy6;

  /// No description provided for @privacy5_hyperlink.
  ///
  /// In en, this message translates to:
  /// **'◉ <a href=\'https://www.google.com/policies/privacy\'>Google Play Services</a>'**
  String get privacy5_hyperlink;

  /// No description provided for @privacy7.
  ///
  /// In en, this message translates to:
  /// **'Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.'**
  String get privacy7;

  /// No description provided for @privacy8.
  ///
  /// In en, this message translates to:
  /// **'This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.'**
  String get privacy8;

  /// No description provided for @privacy9.
  ///
  /// In en, this message translates to:
  /// **'We may employ third-party companies and individuals due to the following reasons:'**
  String get privacy9;

  /// No description provided for @privacy10.
  ///
  /// In en, this message translates to:
  /// **'◉ To facilitate our Service;'**
  String get privacy10;

  /// No description provided for @privacy11.
  ///
  /// In en, this message translates to:
  /// **'◉ To provide the Service on our behalf;'**
  String get privacy11;

  /// No description provided for @privacy12.
  ///
  /// In en, this message translates to:
  /// **'◉ To perform Service-related services; or'**
  String get privacy12;

  /// No description provided for @privacy13.
  ///
  /// In en, this message translates to:
  /// **'◉ To assist us in analyzing how our Service is used.'**
  String get privacy13;

  /// No description provided for @privacy14.
  ///
  /// In en, this message translates to:
  /// **'We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.'**
  String get privacy14;

  /// No description provided for @privacy15.
  ///
  /// In en, this message translates to:
  /// **'We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.'**
  String get privacy15;

  /// No description provided for @privacy16.
  ///
  /// In en, this message translates to:
  /// **'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.'**
  String get privacy16;

  /// No description provided for @privacy17.
  ///
  /// In en, this message translates to:
  /// **'These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.'**
  String get privacy17;

  /// No description provided for @privacy18.
  ///
  /// In en, this message translates to:
  /// **'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.'**
  String get privacy18;

  /// https://api.flutter.dev/flutter/intl/DateFormat-class.html
  ///
  /// In en, this message translates to:
  /// **'This policy is effective as of {date}.'**
  String privacy19(DateTime date);

  /// Privacy Policy
  ///
  /// In en, this message translates to:
  /// **'If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at {contact_email}.'**
  String privacy20(String contact_email);

  /// No description provided for @privacy20_hyperlink.
  ///
  /// In en, this message translates to:
  /// **'This privacy policy page was created at <a href=\'https://privacypolicytemplate.net/\'>privacypolicytemplate.net</a> and modified/generated by <a href=\'https://app-privacy-policy-generator.nisrulz.com/\'>App Privacy Policy Generator</a>.'**
  String get privacy20_hyperlink;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
