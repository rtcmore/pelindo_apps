import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pelindo_apps/screens/formnavigator/form_join_company.dart';
import 'package:pelindo_apps/screens/formnavigator/form_join_personal.dart';
import 'package:pelindo_apps/widgets/custom_app_bar.dart';

class JoinedScreen extends StatelessWidget {
  const JoinedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Column(
            children: [
              const Text(
                "Let's work\ntogether!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
              const Gap(20),
              const Text(
                "Let us know\nwho are you?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FormJoinPersonal()),
                      );
                    },
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
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FormJoinCompany()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
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
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/1polindo.png', // Path ke gambar Anda
                width: 120,
                height: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 3),
              const Text(
                "LEGAL DOCUMENTS LIFE CYCLE APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
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
