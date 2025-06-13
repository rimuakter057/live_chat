import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_color.dart';

class RowLineCircle extends StatelessWidget {
  const RowLineCircle({
    super.key, this.color,
  });
  final Color?color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 6.h, width: 35.w, color: AppColors.grey),
        SizedBox(width: 2.w,),
        CircleAvatar(
          radius: 3,
          backgroundColor:color?? Colors.black,
        ),
      ],
    );
  }
}