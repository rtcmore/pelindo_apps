import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(
          top: 0), // Margin negatif agar mendekat ke elemen di atas
      child: Image.asset(
        'assets/images/bg_polindo_inc.png',
        width: screenWidth,
        height: 250, // Tentukan tinggi agar gambar lebih proporsional
        fit: BoxFit.fill, // Menjaga rasio gambar tanpa stretching
      ),
    );
  }
}
