import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'CreateAccount.dart';
import 'AccountSettings.dart';
import 'PrivacyPolicy.dart';
import 'AddFamilyMember.dart';
//import 'EditProfile.dart';
import 'AnnouncementDetails.dart';
//import 'Bookmark.dart';
import 'AnnouncementList.dart';
import 'Officials.dart';
import 'Events.dart';
import 'EventDetails.dart';
import 'ProfileInformation.dart';
import 'Success.dart';
import 'Bookmark.dart';
import 'EditProfile.dart';
import 'ProfileList.dart';
import 'logout.dart';
import 'Oops.dart';
import 'CreatePassword.dart';
import 'dashboard.dart';
import 'verification.dart';
import 'ResetPassword.dart';

void main() {
  runApp(const WorkTime());
}

class WorkTime extends StatelessWidget {
  const WorkTime({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(
        fontFamily: 'Poppins',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: const LoginScreen(),
      //home: const CreateAccountScreen(),
        //home: const PrivacyPolicyScreen(),
        //home: const AddFamilyMemberScreen(),
        //home: const EditProfileScreen(),
        //home: const AnnouncementDetailsScreen(),
      //home: const AccountSettingsScreen(),
      //home:  const BookMarkScreen(items: []), // incomplete
      //home: const AnnouncementListScreen(),
      //home:  OfficialsScreen(),
      //home:  EventsScreen(),
      //home:  EventsDetailsScreen(),
      //home: const ProfileInformationScreen(),
      //home: const SuccessScreen(),
      //home: const BookmarkScreen(),
      //home: const EditProfileScreen(),
      //home: const ProfileListScreen(),
      //home: const LogoutScreen(),
      //home: const OopsScreen(),
      //home: const CreatePasswordScreen(),
      //home: const dashboardScreen(),
      //home: const VerificationScreen(),
      //home: const ResetScreen(),

    );
  }
}