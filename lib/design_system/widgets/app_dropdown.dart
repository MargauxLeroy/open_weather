import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/radius.dart';
import 'package:open_weather/design_system/constants/sizes.dart';

class AppDropdown extends StatelessWidget {
  final String value;

  const AppDropdown({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: [DropdownMenuItem(child: Text(value))],
      onChanged: (value) {},
    );

    // return Container(
    //   padding: const EdgeInsets.all(AppPadding.padding8)
    //       .copyWith(left: AppPadding.padding12),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: AppColors.light),
    //     borderRadius: AppBorderRadius.br4,
    //   ),
    //   child: Row(
    //     children: [
    //       Text(value),
    //       const SizedBox(width: AppPadding.gap4),
    //       const Icon(Icons.expand_more, size: AppIconsSizes.is16)
    //     ],
    //   ),
    // );
  }
}
