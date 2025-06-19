import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color.dart';

class GiftBoxWidget extends StatelessWidget {
  const GiftBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.red, Colors.orange],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
              border: Border(
                right: BorderSide(width: 1,color: AppColors.white),
                bottom: BorderSide(width: 1,color: AppColors.white),
                top: BorderSide(width: 1,color: AppColors.white),
              )
          ),
          child: Text(
            'Random',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),


        Positioned(
          top: -30.h,
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage('assets/images/gift.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}