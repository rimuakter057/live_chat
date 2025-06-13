import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_chat/utils/app_color.dart';

class UserMessageCard extends StatelessWidget {
  final IconData? icon; // 👈 Optional icon parameter

  const UserMessageCard({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 6.h, width: 70.w, color: AppColors.grey),
              SizedBox(height: 3.h),
              Container(height: 5.h, width: 50.w, color: AppColors.grey),
              SizedBox(height: 3.h),
              Container(height: 5.h, width: 40.w, color: AppColors.grey),
            ],
          ),
          SizedBox(width: 10.w),

          /// 👉 Custom icon or fallback to default person icon
          Icon(
            icon ?? Icons.person, // If `icon` is null, use Icons.person
            size: 24.sp,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
