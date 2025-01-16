import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pelindo_apps/widgets/button_primary.dart';
import 'package:pelindo_apps/widgets/footer_section.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

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
                        const Gap(40), // Add space here
                        Image.asset(
                          'assets/images/hi_polindo.png', // Path to your image
                          width: 200,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        const Gap(0),
                        const Text(
                          "Welcome, fill in the form below correctly",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'PlusJakartaSans',
                            color: Color(0xFF040000),
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          "Register",
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
                            labelText: 'Your Name',
                            hintText: 'Enter your name here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 10.0), // Atur tinggi di sini
                          ),
                          style: const TextStyle(
                            // Atur teks style di sini
                            fontSize: 14, fontWeight: FontWeight.w400,
                            color: Color(0xFF343434),
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        const Gap(15),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            hintText: 'Enter your email here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 10.0),
                          ),
                          style: const TextStyle(
                            // Atur teks style di sini
                            fontSize: 14, fontWeight: FontWeight.w400,
                            color: Color(0xFF343434),
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        const Gap(15),
                        TextField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            hintText: 'Enter your Address here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 10.0), // Atur tinggi di sini
                          ),
                          style: const TextStyle(
                            // Atur teks style di sini
                            fontSize: 14, fontWeight: FontWeight.w400,
                            color: Color(0xFF343434),
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        const Gap(15),
                        TextField(
                          obscureText: !_isPasswordVisible,
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
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                          ),
                          style: const TextStyle(
                            // Atur teks style di sini
                            fontSize: 14, fontWeight: FontWeight.w400,
                            color: Color(0xFF343434),
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        const Gap(15),
                        TextField(
                          obscureText: !_isConfirmPasswordVisible,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Confirm your password here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 10.0), // Atur tinggi di sini
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isConfirmPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isConfirmPasswordVisible =
                                      !_isConfirmPasswordVisible;
                                });
                              },
                            ),
                          ),
                          style: const TextStyle(
                            // Atur teks style di sini
                            fontSize: 14, fontWeight: FontWeight.w400,
                            color: Color(0xFF343434),
                            fontFamily: 'PlusJakartaSans',
                          ),
                        ),
                        const Gap(10),
                        ButtonPrimary(
                          title: 'Register',
                          onTap: () {
                            Navigator.pushNamed(context, '/loginscreen');

                            // Implement register logic here
                          },
                          width: double.infinity,
                          color: const Color(0xFF4B39EF),
                          borderRadius: 10,
                        ),
                        const Gap(15),
                        const Text(
                          'Or register with',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'plusJakartaSans',
                          ),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon:
                                  Image.asset('assets/images/facebook_ic.png'),
                              onPressed: () {
                                // Implement Facebook login logic here
                              },
                            ),
                            const Gap(20),
                            IconButton(
                              icon: Image.asset('assets/images/apple_ic.png'),
                              onPressed: () {
                                // Implement Apple login logic here
                              },
                            ),
                            const Gap(20),
                            IconButton(
                              icon: Image.asset('assets/images/google_ic.png'),
                              onPressed: () {
                                // Implement Google login logic here
                              },
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/loginscreen');
                              },
                              child: const Text(
                                'Login',
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
                const FooterSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
