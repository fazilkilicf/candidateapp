import 'package:candidateapp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandLogoWidget extends StatelessWidget {
  final double logoRate;
  const BrandLogoWidget({
    super.key,
    this.logoRate = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.w*logoRate,
      height: 27.h*logoRate,
      child: Image.asset(PathConstants.logo),
    );
  }
}
