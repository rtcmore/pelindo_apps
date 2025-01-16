import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pelindo_apps/widgets/button_primary.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Bagian atas kosong untuk desain gambar jika diperlukan
          const Spacer(),
          // Bagian tengah
          Column(
            children: [
              const Text(
                "Let's work together!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              const Gap(58),
              const Text(
                "Let us know\nwho are you?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const Gap(40),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 20, 16, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/personal.png',
                        width: 140,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 20, 16, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/company.png',
                        width: 140,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonPrimary(
                    title: 'Login',
                    onTap: () {
                      Navigator.pushNamed(context, '/loginscreen');
                    },
                    width: 150,
                    color: const Color(0xFF4B39EF),
                    borderRadius: 10,
                  ),
                  const Gap(20),
                  ButtonPrimary(
                    title: 'Register',
                    onTap: () {
                      Navigator.pushNamed(context, '/registerscreen');
                    },
                    width: 150,
                    color: const Color(0xFF4B39EF),
                    borderRadius: 10,
                  ),
                ],
              ),
            ],
          ),
          const Gap(15),
          Column(
            children: [
              Image.asset(
                'assets/images/1polindo.png', // Path ke gambar Anda
                width: 120,
                height: 40,
                fit: BoxFit.contain,
              ),
              const Gap(0),
              const Text(
                "LEGAL DOCUMENTS LIFE CYCLE APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Gap(30),
        ],
      ),
    );
  }
}
