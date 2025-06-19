import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_chat/live_camera/my_camera_screen.dart';
import 'package:live_chat/onboarding/skip/widget/container_image_widget.dart';
import 'package:live_chat/onboarding/skip/widget/gift_box_widget.dart';
import 'package:live_chat/utils/app_color.dart';

class SkipScreen extends StatefulWidget {
  const SkipScreen({super.key});

  @override
  State<SkipScreen> createState() => _SkipScreenState();
}

class _SkipScreenState extends State<SkipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/girl2.jfif",),
          fit: BoxFit.cover,),),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // row icon
            _buildAppbarIcon(),
            // gift box container
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                GiftBoxWidget(),
                SizedBox(),
              ],
            ),
            SizedBox(height: 150.h,),
            //right gift box
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
              Image.asset("assets/images/gift_image.png",fit: BoxFit.cover,
              height: 70.h,
                width: 70.w,
              ),
              ],
            ),
            SizedBox(height: 20.h,),
            //row image container
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                        SizedBox(
              height: 180.h,
              width: 90.w,
              child: MyCameraScreen(),
                        ),
                      Row(
                        children: [
                        Icon(Icons.flag,color: Colors.red,),
                        SizedBox(width: 15.w,),
                        Icon(Icons.print,color: Colors.white,),
                      ],),
                    ],
                  ),
                  Icon(Icons.favorite,color: AppColors.white,size: 100.sp,),
                  Column(
                    children: [
                      // container other user live camera
                      ContainerImageWidget(image: 'assets/images/girl1.jfif',),
                      Icon(Icons.print,color: Colors.white,),
                    ],
                  ),
                ],
              ),
            ),


              SizedBox(height: 80.h,),
            //text column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Valeria 21",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "Colombia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    TextButton(onPressed: (){},
                      child:Text(
                      "SKIP >",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),)

                  ],
                ),
              ],
            ),
          ],),
        ),
      ),
    );
  }

  Padding _buildAppbarIcon() {
    return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.person,color: AppColors.white)),
                   IconButton(onPressed: (){}, icon: Icon(Icons.print,color: AppColors.white)),
                ],
                ),
                SizedBox(height: 6.h,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0x1F000000),
                        shape: const CircleBorder(),
                        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                      ),
                      icon: Icon(Icons.flag, color: AppColors.white),
                    ),

                  ],
                ),
              ],
            ),
          );
  }
}




