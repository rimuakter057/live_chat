import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color.dart';

class ContainerImageWidget extends StatelessWidget {
  const ContainerImageWidget({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 85.w,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: AppColors.white),
      ),
    );
  }
}