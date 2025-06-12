import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Find your perfect',
                style: TextStyle(
                    fontSize: 24,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const Text(
                'Cinephile',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
               Expanded(
                 child: Stack(
                   clipBehavior: Clip.none,
                   children: [
                     SizedBox(
                       child: Column(
                          children: [
                            UserMessageCard(),
                            UserMessageCard(),
                          ],
                       ),
                     ),
                   ],
                 ),
               ),

              CustomButton(
                text: 'Get started',
                onTap: () {
                  // Navigate or action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
