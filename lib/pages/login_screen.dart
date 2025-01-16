import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pelindo_apps/widgets/button_primary.dart';
import 'package:pelindo_apps/widgets/footer_section.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true; // Controls visibility of password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Gap(45),
                        Image.asset(
                          'assets/images/hi_polindo.png', // Path to main image
                          width: 200,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        const Gap(5),
                        const Text(
                          "Welcome Back,",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                            color: Color(0xFF040000),
                          ),
                        ),
                        const Gap(10),
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PlusJakartaSans',
                            color: Color(0xFF040000),
                          ),
                        ),
                        const Gap(15),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            hintText: 'Enter your email here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 10.0), // Atur tinggi di sini
                          ),
                        ),
                        const Gap(15),
                        TextField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 10.0), // Atur tinggi di sini
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                        const Gap(0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgotpwscreen');
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'plusJakartaSans',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const Gap(0),
                        ButtonPrimary(
                          title: 'Login',
                          onTap: () {
                            Navigator.pushNamed(context, '/dashboardscreen');
                          },
                          width: double.infinity,
                          color: const Color(0xFF4B39EF),
                          borderRadius: 10,
                        ),
                        const Gap(20),
                        const Text(
                          'Or login with',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'plusJakartaSans',
                          ),
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon:
                                  Image.asset('assets/images/facebook_ic.png'),
                              onPressed: () {
                                // Add Facebook login function
                              },
                            ),
                            const Gap(20),
                            IconButton(
                              icon: Image.asset('assets/images/apple_ic.png'),
                              onPressed: () {
                                // Add Apple login function
                              },
                            ),
                            const Gap(20),
                            IconButton(
                              icon: Image.asset('assets/images/google_ic.png'),
                              onPressed: () {
                                // Add Google login function
                              },
                            ),
                          ],
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/registerscreen');
                              },
                              child: const Text(
                                'Create Account',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'plusJakartaSans',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const FooterSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
