import 'package:flutter/material.dart';
import 'package:pelindo_apps/widgets/custom_app_bar.dart';

class NotifikasiApproval extends StatelessWidget {
  const NotifikasiApproval({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Image.asset(
              'assets/images/avatar/notifprofile/dokumentchek.png', // Path ke gambar ilustrasi
              width: 248,
              height: 248,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            const Text(
              "Normally this took 1 - 3 days",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                fontFamily: 'PlusJakartaSans',
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/images/avatar/notifprofile/polindologodown.png', // Path ke logo Polindo
                width: 320,
                height: 66,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
