import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qismati/common/colors.dart';
import 'package:qismati/common/widgets/custom_button.dart';
import 'package:qismati/common/widgets/custom_text_field.dart';

class SearchByUsernameSection extends StatelessWidget {
  const SearchByUsernameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          text: "Username",
          controller: TextEditingController(),
        ),
        SizedBox(height: 21.h),
        CustomButton(
          onPressed: () async {},
          text: 'Search',
          shadowColor: CustomColors.shadowBlue,
          elevation: 5,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
