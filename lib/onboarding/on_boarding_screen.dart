import 'package:flutter/material.dart';
import 'package:live_chat/onboarding/widget/profile_card.dart';
import 'package:live_chat/onboarding/widget/user_message_card.dart';
import '../utils/app_color.dart';
import 'package:live_chat/onboarding/widget/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Header text section
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 40),
                  Text(
                    'Find your perfect',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Cinephile',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),

            // Message card section
            SizedBox(
              height: 350,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Center card at bottom
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
            Image.asset("assets/images/man.png",
            height: 200,
              width: 80,
            ),
                        UserMessageCard(),
                      ],
                    ),
                  ),
                  // Left card (upper)
                  Positioned(
                    top: 20,
                    left: 24,
                    child: UserMessageCard(),
                  ),
                  Positioned(
                    top: 80,
                    left: 0,
                    child: UserMessageCard(),
                  ),
                  // Right card (upper)
                  Positioned(
                    top: 20,
                    right: 24,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 40,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              const SizedBox(height: 8),
                              const Icon(Icons.book_online, color: AppColors.primary),
                              const SizedBox(height: 8),
                              const Icon(Icons.shopping_bag, color: AppColors.primary),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: -10, // Container er baire anar jonno negative value
                          child:     CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.red,
                            child: const Icon(Icons.favorite,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )


                ],
              ),
            ),

            // Button at bottom
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CustomButton(
                text: 'Get started',
                onTap: () {
                  // Navigate or action
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
