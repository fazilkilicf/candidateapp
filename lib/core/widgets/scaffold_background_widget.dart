import 'package:flutter/material.dart';

import '../core.dart';

class ScaffoldBackgroundWidget extends StatelessWidget {
  const ScaffoldBackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtility.getScreenWidth(context),
      height: DeviceUtility.getScreenHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: AppColors.backgroundLinearGradient,
            begin: Alignment.topCenter,
            end: AlignmentDirectional.bottomCenter),
      ),
    );
  }
}