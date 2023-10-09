import 'package:flutter/material.dart';
import 'package:my_first_app/screens/OngoingJobs.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/images.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import '../utilitis/widgets/custombackbutton.dart';
import 'AddJob.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppTheme.bgColor,
            body: ListView(
                children: [
                  Column(
                      children: [
                        Stack(
                            children: [
                              SizedBox(
                                  height: ScreenHeight(context) * 0.4,
                                  width: ScreenWidth(context),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      AppImages.placeholder,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Column(
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.all(11.0),
                                     child: CustomBackButton(ontap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> OngoingJobsScreen()));
                                     }),
                                   )
                                ],
                              ),
                            ]),
                        Container(
                          height: ScreenHeight(context)*0.60,
                          width: double.infinity,
                          child: Padding(
                             padding: const EdgeInsets.all(11.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Mobile Screen Repair',style: T2textStyle,),
                                  Text('£ 30.0',style: T4textStyle,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,size: 20,color: AppTheme.fontdimColor,),
                                      HorizontalGap(10),
                                      Text('James str. London',style: T7textStyle,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.person,size: 20,color: AppTheme.fontdimColor,),
                                      HorizontalGap(10),
                                      Text('Adnan Sami',style: T7textStyle,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.access_alarm_outlined,size: 20,color: AppTheme.fontdimColor,),
                                      HorizontalGap(10),
                                      Text('03.05.2023 ------ 10.05.2023',style: T7textStyle,),
                                    ],
                                  ),
                                  VerticalGap(15),
                                  Text('Description',style:T6textStyle ,),
                                  Text('Lorem Ipsum is simply dummy text of the printing and typeset industry.Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
                                    style: T2textStyle,),
                        //           VerticalGap(15),
                        //           CustomOfferContainer()
                        //         ]),
                        //   ),
                        // )
    ]))
    )
                ])
       ] )
        )
    );
  }
}
