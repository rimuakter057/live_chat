import 'package:flutter/material.dart';

import '../../utils/app_color.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.red,
            child: const Icon(Icons.favorite,color: Colors.white),
          ),
          const SizedBox(height: 8),
          const Icon(Icons.book_online, color: AppColors.primary),
          const SizedBox(height: 8),
          const Icon(Icons.shopping_bag, color: AppColors.primary),
        ],
      ),
    );
  }
}
