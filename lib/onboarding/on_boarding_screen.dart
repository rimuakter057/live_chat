import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_chat/onboarding/widget/profile_card.dart';
import 'package:live_chat/onboarding/widget/row_line_circle.dart';
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
                children:  [
                  SizedBox(height: 40.h),
                  Text(
                    'Find your perfect',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Cinephile',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),

   //stack middle
            SizedBox(
              height: 350.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  /// Center card at bottom
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
            Image.asset("assets/images/man.png",
            height: 280.h,
              width: 120.w,
            ),
                        UserMessageCard(
                          icon: Icons.message,
                        ),
                      ],
                    ),
                  ),
                  /// Left card (upper)
                  Positioned(
                    top: 20.h,
                    left: 24.r,
                    child: UserMessageCard(),
                  ),
                  ///left down
                  Positioned(
                    top: 80.h,
                    left: 0,
                    child: UserMessageCard(),
                  ),
                  // Right card (upper)
              ///right upper
                  Positioned(
                    top: 0,
                    right: 24.w,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 120.h,
                          width: 110.w,
                          padding: EdgeInsets.all(8.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20.h,),
                            Image.asset("assets/images/man.png",
                            height: 50.h,


                            ),
                               Divider(),
                              Row(
                                children: [
                                  RowLineCircle(
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 6.w,),
                                  RowLineCircle(
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                          ],
                          ),
                        ),
                        ///middle container
                        Positioned(
                          top: 40.h,
                          right: 70.w,
                          child:
                          Container(
                            width: 80.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Container(height: 6.h, width: 15.w, color: AppColors.grey),
                                SizedBox(width: 4.w,),
                                RowLineCircle(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  ///right center
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:  EdgeInsets.only(right: 80.w,top: 40.h),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 40.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                 SizedBox(height: 14.h),
                                 Icon(Icons.book_online, color: AppColors.primary),
                                 SizedBox(height: 4.h),
                                 Icon(Icons.shopping_bag, color: AppColors.primary),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -3.h,
                            right: -10.w, // Container er baire anar jonno negative value
                            child:     CircleAvatar(
                              radius: 18.r,
                              backgroundColor: Colors.red,
                              child: const Icon(Icons.favorite,color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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


