import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_chat/onboarding/skip/widget/container_image_widget.dart';
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
          child: Column(children: [
            // row icon
            Padding(
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
            ),
            // gift box container
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Stack(
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
                ),



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
              height: 40.h,
                width: 40.w,
              ),

              ],
            ),
            SizedBox(height: 20.h,),
            //row image container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ContainerImageWidget(image: 'assets/images/girl.jfif',),
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
                    ContainerImageWidget(image: 'assets/images/girl.jfif',),
                    Icon(Icons.print,color: Colors.white,),
                  ],
                ),
              ],
            ),
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
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "SKIP >",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],),
        ),
      ),
    );
  }
}


