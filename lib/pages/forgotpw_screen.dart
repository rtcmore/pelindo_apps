import 'package:flutter/material.dart';
import 'package:pelindo_apps/widgets/button_primary.dart';
import 'package:pelindo_apps/widgets/footer_section.dart';

class ForgotpwScreen extends StatefulWidget {
  const ForgotpwScreen({super.key});

  @override
  _ForgotpwScreenState createState() => _ForgotpwScreenState();
}

class _ForgotpwScreenState extends State<ForgotpwScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "OTP Code",
                        labelStyle: TextStyle(
                          fontFamily: 'PlusJakartaSans',
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 10.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement request OTP logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFDEB),

                      minimumSize:
                          const Size(100, 48), // Adjust button size as needed
                      textStyle: const TextStyle(
                        color: Color(0xFF0A0A0A),
                        fontFamily: 'PlusJakartaSans',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.black38),
                      ),
                    ),
                    child: const Text(
                      "Request OTP Code",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _newPasswordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: "New Password",
                  labelStyle: const TextStyle(
                    fontFamily: 'PlusJakartaSans',
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
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
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _confirmPasswordController,
                obscureText: !_isConfirmPasswordVisible,
                decoration: InputDecoration(
                  labelText: "Confirm New Password",
                  labelStyle: const TextStyle(
                    fontFamily: 'PlusJakartaSans',
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ButtonPrimary(
                title: 'Create',
                onTap: () {
                  final phone = _phoneController.text.trim();
                  final otp = _otpController.text.trim();
                  final newPassword = _newPasswordController.text.trim();
                  final confirmPassword =
                      _confirmPasswordController.text.trim();

                  if (newPassword != confirmPassword) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Passwords do not match!"),
                      ),
                    );
                  } else {
                    // Reset password logic here
                    Navigator.pushNamed(context, '/loginscreen');
                  }
                },
                width: double.infinity,
                color: const Color(0xFF4B39EF),
                borderRadius: 8,
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FooterSection(),
    );
  }
}
