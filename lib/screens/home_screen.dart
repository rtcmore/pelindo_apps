import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4, // Adds the shadow effect under the app bar
        toolbarHeight: 115, // Increased height for more space
        automaticallyImplyLeading: false, // Remove the default back button
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 15), // Tambahkan jarak di atas teks
                    child: Text(
                      "Hi, Skylar Dias",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'plusJakartaSans',
                      ),
                    ),
                  ),
                  const Text(
                    "Welcome In",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'plusJakartaSans',
                    ),
                  ),
                  const Gap(2), // Jarak sebelum gambar
                  Image.asset(
                    'assets/images/1polindo.png',
                    width: 120,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilscreen');
                  // Implementasikan logika lainnya di sini
                },
                style: ElevatedButton.styleFrom(
                  shape:
                      const CircleBorder(), // Membuat tombol berbentuk lingkaran
                  padding:
                      const EdgeInsets.all(0), // Menghapus padding tambahan
                  elevation: 0, // Menonaktifkan bayangan jika tidak diperlukan
                  backgroundColor:
                      Colors.transparent, // Menjadikan tombol transparan
                ),
                child: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/profil.png'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Gap(0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/joinedscreen');
                // Implement create project functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFF3EEFF), // Updated to backgroundColor
                minimumSize: const Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'Create Project +',
                style: TextStyle(
                  color: Color(0xFF6A707C),
                  fontSize: 20,
                  fontFamily: 'plusJakartaSans',
                ),
              ),
            ),
            const Gap(10),
            Expanded(
              child: ListView(
                children: [
                  ProjectCard(
                    projectName: "Collaboration",
                    serviceType: "Service",
                    date: "11/13/2024",
                    status: "Reviewed",
                    imagePath: 'assets/images/acc_join.png',
                    onTap: () {
                      Navigator.pushNamed(context, '/reviewedScreen');
                    },
                  ),
                  ProjectCard(
                    projectName: "Collaboration",
                    serviceType: "Service",
                    date: "11/13/2024",
                    status: "Accepted",
                    imagePath: 'assets/images/acc_join.png',
                    onTap: () {
                      Navigator.pushNamed(context, '/acceptedScreen');
                    },
                  ),
                  ProjectCard(
                    projectName: "Collaboration",
                    serviceType: "Service",
                    date: "11/13/2024",
                    status: "Rejected",
                    imagePath: 'assets/images/acc_join.png',
                    onTap: () {
                      Navigator.pushNamed(context, '/rejectedScreen');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String serviceType;
  final String date;
  final String status;
  final String imagePath;
  final VoidCallback onTap; // Fungsi callback untuk navigasi

  const ProjectCard({
    super.key,
    required this.projectName,
    required this.serviceType,
    required this.date,
    required this.status,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Tangani klik kartu
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Text(
                    'Image not found',
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'plusJakartaSans',
                    ),
                  ),
                );
              },
            ),
            const Gap(5),
            Text(
              projectName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'plusJakartaSans',
              ),
            ),
            const Gap(5),
            Text(
              serviceType,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontFamily: 'plusJakartaSans',
              ),
            ),
            const Gap(5),
            Text(
              date,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontFamily: 'plusJakartaSans',
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80, // Adjust width to fit overlapping avatars
                  height: 30, // Set height to fit avatars
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: List.generate(
                      5,
                      (index) => Positioned(
                        left: index * 20.0, // Adjust space between avatars
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(
                            'assets/images/avatar/photo${index + 1}.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: status == "Reviewed"
                        ? Colors.orange
                        : status == "Accepted"
                            ? Colors.green
                            : Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    status,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
