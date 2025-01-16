import 'package:flutter/material.dart';
import 'package:pelindo_apps/pages/dasboard_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'PlusJakartaSans',
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true, // This line centers the title text
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          // Handle back button press
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const DashboardScreen()),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
