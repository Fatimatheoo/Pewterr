import 'package:flutter/material.dart';
import 'package:my_first_app/screens/AddJob.dart';
import 'package:my_first_app/screens/OnpendingJobs.dart';
import 'package:my_first_app/screens/UploadScreen.dart';
import 'package:my_first_app/utilitis/textstyles.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/images.dart';
import '../utilitis/sizes.dart';
import '../utilitis/widgets/buttonstyle.dart';
import '../utilitis/widgets/custombutton.dart';
import '../utilitis/widgets/customcontainer.dart';
import '../utilitis/widgets/jobwidget.dart';
import 'DetailScreen.dart';

class OngoingJobsScreen extends StatelessWidget {
  const OngoingJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.bgColor,
        appBar: AppBar(
            backgroundColor: AppTheme.bgColor,
            title: Text('James Kokack'),
            titleTextStyle: TextStyle(
              color: AppTheme.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            leading: SizedBox(
              height: 35,
              width: 35,
              child: Image.asset(AppImages.menu),
            )),
        body : Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
              VerticalGap(ScreenHeight(context)*0.03),
              Row(children: [
                Text('My Jobs',style: T9textStyle,)
              ],),
              VerticalGap(ScreenHeight(context)*0.06),
              Container(
                height: 57,
                width: 372,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      CustomSelectedButton(
                          ontap: (){},
                          style: ButtonTwo,
                          text: 'ONGOING'),
                      CustomSelectedButton(
                          ontap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> OnpendingJobScreen()));
                          },
                          style: ButtonOne,
                          text: 'PENDING'),
                    ],
                  ),
                ),
              ),
              VerticalGap(20),
              CustomContainer(ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));}),
              VerticalGap(10),
              CustomContainer(ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddJob()));
              }),
              VerticalGap(10),
              CustomContainer(ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> UploadScreen()));
              }),
              VerticalGap(ScreenHeight(context)*0.04),
              CustomButton(text: 'Post a Job')
            ],
          ),
        )
    );
  }
}
