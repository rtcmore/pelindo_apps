import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pelindo_apps/widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profile'),
      body: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.all(0),
            child: Card(
              margin: const EdgeInsets.all(0),
              color: Colors.blue[50],
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profil.png'),
                ),
                title: Text('Skylar Dias',
                    style: TextStyle(fontFamily: 'PlusJakartaSans')),
                subtitle: Text('melpeters@gmail.com',
                    style: TextStyle(fontFamily: 'PlusJakartaSans')),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Change Detail Profil',
              style: TextStyle(fontFamily: 'PlusJakartaSans', fontSize: 16),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle Change Detail Profil tap
            },
          ),
          ListTile(
            title: const Text(
              'Change Password',
              style: TextStyle(fontFamily: 'PlusJakartaSans', fontSize: 16),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle Change Password tap
            },
          ),
          ListTile(
            title: const Text(
              'Approval',
              style: TextStyle(fontFamily: 'PlusJakartaSans', fontSize: 16),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle Approval tap
            },
          ),
          ListTile(
            title: const Text(
              'Setting',
              style: TextStyle(fontFamily: 'PlusJakartaSans', fontSize: 16),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Handle Setting tap
            },
          ),
          const Gap(8),
          const Text(
            'Not Join?',
            style: TextStyle(fontFamily: 'PlusJakartaSans', fontSize: 12),
          ),
          const Text(
            'Join Now!',
            style: TextStyle(
              fontFamily: 'PlusJakartaSans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/joinedscreen');
              // Implement create project functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF3EEFF),
              minimumSize: const Size(double.infinity, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text(
              'Create Project +',
              style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  color: Color(0xFF6A707C),
                  fontSize: 20),
            ),
          ),
          const Gap(130),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/loginscreen');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF2424),
              fixedSize: const Size(126, 33),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Log out',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
