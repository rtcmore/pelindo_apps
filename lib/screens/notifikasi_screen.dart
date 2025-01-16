import 'package:flutter/material.dart';
import 'package:pelindo_apps/widgets/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Notifications'),
      body: ListView(
        children: const [
          ListTile(
            leading: SizedBox(
              width: 60, // Adjust width to fit overlapping avatars
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          'assets/images/avatar/notifprofile/notif1.png'),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          'assets/images/avatar/notifprofile/notif2.png'),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              'Your project is reviewed',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 16,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
          ListTile(
            leading: SizedBox(
              width: 60, // Adjust width to fit overlapping avatars
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          'assets/images/avatar/notifprofile/notif1.png'),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          'assets/images/avatar/notifprofile/notif2.png'),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              'Your project is rejected',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 16,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
          // Add more ListTiles here as needed
        ],
      ),
    );
  }
}
