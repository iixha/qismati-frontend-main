import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qismati/common/widgets/custom_dropdown_menu.dart';
import 'package:qismati/common/widgets/custom_text_field.dart';

class MaritialSection extends StatelessWidget {
  const MaritialSection({
    super.key,
    required this.nationality,
    required this.maritialStatusController,
    required this.marriageTypeController,
    required this.ageController,
    required this.childrenController,
  });

  final List<String> nationality;
  final TextEditingController maritialStatusController;
  final TextEditingController marriageTypeController;
  final TextEditingController ageController;
  final TextEditingController childrenController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Maritial Status',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 25.h),
        CustomDropdownMenu(
          values: nationality,
          controller: maritialStatusController,
          hintText: "Status",
        ),
        SizedBox(height: 20.h),
        CustomDropdownMenu(
          values: nationality,
          controller: marriageTypeController,
          hintText: "Marriage Type",
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          text: 'Age',
          controller: ageController,
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          text: 'Children',
          controller: childrenController,
        ),
      ],
    );
  }
}
