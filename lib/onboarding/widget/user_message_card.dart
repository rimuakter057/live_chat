import 'package:flutter/material.dart';
import 'package:live_chat/utils/app_color.dart';

class UserMessageCard extends StatelessWidget {
  const UserMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // 👈 Less padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
           ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 6, width: 70, color: AppColors.grey),
              const SizedBox(height: 3),
              Container(height: 5, width: 50, color:  AppColors.grey),
              const SizedBox(height: 3),
              Container(height: 5, width: 40, color:  AppColors.grey),

            ],
          ),
          const SizedBox(width: 10),

          Icon(Icons.person, size: 24, color: Colors.red),
        ],
      ),
    );
  }
}
