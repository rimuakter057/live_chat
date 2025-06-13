import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_color.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      padding:  EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8.r)],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: Colors.red,
            child: const Icon(Icons.favorite,color: Colors.white),
          ),
           SizedBox(height: 8.h),
          const Icon(Icons.book_online, color: AppColors.primary),
           SizedBox(height: 8.h),
          const Icon(Icons.shopping_bag, color: AppColors.primary),
        ],
      ),
    );
  }
}
