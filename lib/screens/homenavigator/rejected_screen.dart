import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'user_feedback.dart';

class RejectedScreen extends StatelessWidget {
  const RejectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Review",
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card with shadow and rounded corners
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/acc_join.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Collaboration",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PlusJakartaSans',
                              ),
                            ),
                            Text(
                              "Service",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontFamily: 'PlusJakartaSans',
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            "Rejected",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PlusJakartaSans',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                ],
              ),
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: UserFeedback(
                name: "Louise",
                role: "HR | Admin",
                feedback: "Not interesting",
                imagePath: 'assets/images/avatar/hrprofile/photo1.png',
              ),
            ),
            const Gap(7),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: UserFeedback(
                name: "Anggie",
                role: "HR | Admin",
                feedback: "You should add more detail about the event",
                imagePath: 'assets/images/avatar/hrprofile/photo2.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
