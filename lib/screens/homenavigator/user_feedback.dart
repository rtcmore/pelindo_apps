import 'package:flutter/material.dart';

class UserFeedback extends StatelessWidget {
  final String name;
  final String role;
  final String feedback;
  final String imagePath; // Add a parameter for the image path

  const UserFeedback({
    super.key,
    required this.name,
    required this.role,
    required this.feedback,
    required this.imagePath, // Initialize the new parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage:
                AssetImage(imagePath), // Use the provided image path
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'PlusjakartaSans',
                  ),
                ),
                Text(
                  role,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'PlusjakartaSans',
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  feedback,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'PlusjakartaSans',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
