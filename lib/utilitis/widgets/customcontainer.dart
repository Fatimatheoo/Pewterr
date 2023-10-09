import 'package:flutter/material.dart';
import '../colors.dart';
import '../gaps.dart';
import '../icons.dart';
import '../images.dart';
import '../sizes.dart';
import '../textstyles.dart';

class CustomContainer extends StatelessWidget {
  final VoidCallback? ontap;

  const CustomContainer({
    super.key,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(borderRadius: BorderRadius.circular(
                          10), child: Image.asset(AppImages.placeholder)),
                    ),
                  ),
                  HorizontalGap(ScreenWidth(context) * 0.03),
                  SizedBox(
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mobile Screen Repair',style: T8textStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 15,height: 20,child: Image.asset(AppIcon.location),
                                ),
                                HorizontalGap(10),
                                Text('James str. London',style: T7textStyle,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 15,height: 20,child: Image.asset(AppIcon.tools),
                                ),
                                HorizontalGap(10),
                                Text('Adnan Sami',style: T7textStyle,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                width: 15,height: 20,child: Image.asset(AppIcon.clock),),
                                HorizontalGap(10),
                                Text('03.05.2023',style: T7textStyle,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}