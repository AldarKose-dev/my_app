import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonWeatherInfo extends StatelessWidget {
  const SkeletonWeatherInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 6.h,
            ),
            const SkeletonLine(
              style: SkeletonLineStyle(
                  randomLength: true, alignment: Alignment.center),
            ),
            SizedBox(
              height: 6.h,
            ),
            const SkeletonLine(
              style: SkeletonLineStyle(
                  randomLength: true, alignment: Alignment.center),
            ),
            SizedBox(
              height: 6.h,
            ),
            const SkeletonLine(
              style: SkeletonLineStyle(
                  randomLength: true, alignment: Alignment.center),
            ),
            SizedBox(
              height: 6.h,
            ),
            const SkeletonLine(
              style: SkeletonLineStyle(
                  randomLength: true, alignment: Alignment.center),
            ),
            SizedBox(
              height: 16.h,
            ),
          ]),
    );
  }
}
