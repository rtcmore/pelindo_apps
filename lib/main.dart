import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pelindo_apps/pages/dasboard_screen.dart';
import 'package:pelindo_apps/pages/forgotpw_screen.dart';
import 'package:pelindo_apps/pages/login_screen.dart';
import 'package:pelindo_apps/pages/onboard_page.dart';
import 'package:pelindo_apps/pages/register_screen.dart';
import 'package:pelindo_apps/screens/home_screen.dart';
import 'package:pelindo_apps/screens/homenavigator/accepted_screen.dart';
import 'package:pelindo_apps/screens/homenavigator/rejected_screen.dart';
import 'package:pelindo_apps/screens/homenavigator/reviewed_screen.dart';
import 'package:pelindo_apps/screens/joined_screen.dart';
import 'package:pelindo_apps/screens/notifikasi/notifikasi_approval.dart';
import 'package:pelindo_apps/screens/profil_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffF9F9F9),
          textTheme: GoogleFonts.plusJakartaSansTextTheme(),
        ),
        home: const OnboardPage(),
        routes: {
          '/loginscreen': (context) => const LoginScreen(),
          '/registerscreen': (context) => const RegisterScreen(),
          '/dashboardscreen': (context) => const DashboardScreen(),
          '/homescreen': (context) => const HomeScreen(),
          '/joinedscreen': (context) => const JoinedScreen(),
          '/profilscreen': (context) => const ProfileScreen(),
          '/reviewedScreen': (context) => const ReviewedScreen(),
          '/acceptedScreen': (context) => const AcceptedScreen(),
          '/rejectedScreen': (context) => const RejectedScreen(),
          '/forgotpwscreen': (context) => const ForgotpwScreen(),
          '/notifikasiapproval': (context) => const NotifikasiApproval(),
          // '/onboardpage': (context) => const OnboardPage(),
        });
  }
}
