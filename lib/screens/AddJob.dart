import 'package:flutter/material.dart';
import 'package:my_first_app/screens/UploadScreen.dart';
import 'package:my_first_app/utilitis/button.dart';
import 'package:my_first_app/utilitis/gaps.dart';
import 'package:my_first_app/utilitis/sizes.dart';
import '../utilitis/colors.dart';
import '../utilitis/decor.dart';
import '../utilitis/textstyles.dart';
import '../utilitis/widgets/custombackbutton.dart';

class AddJob extends StatelessWidget {
  const AddJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: ListView(
        children: [
          VerticalGap(8),
          Row(
            children: [
              HorizontalGap(10),
              CustomBackButton(ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> UploadScreen()));
              }),
              HorizontalGap(ScreenWidth(context)*0.3),
              Text('Add Job',style: T3textStyle,),
            ],
          ),
          VerticalGap(19),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Title',style: T1textStyle,),
                  ],
                ),
                VerticalGap(5),
                Container(
                  width: 376,
                  height: 55,
                  decoration: Decor,
                  child: Center(child: Text('Title',style: T1textStyle,)),
                ),
                VerticalGap(15),
                Row(
                  children: [
                    Text('Price',style: T1textStyle,),
                  ],
                ),
                VerticalGap(5),
                Container(
                  width: 376,
                  height: 55,
                  decoration: Decor,
                  child: Center(child: Text('0.00',style: T1textStyle,)),
                ),
                VerticalGap(10),
                Row(
                  children: [
                    Text('Description',style: T1textStyle,),
                  ],
                ),
                VerticalGap(5),
                Container(
                  width: 376,
                  height: 185,
                  decoration: Decor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Description',style: T1textStyle,),
                      ),
                    ],
                  ),
                ),
                VerticalGap(10),
                Row(
                  children: [
                    Text('Starting Time',style: T1textStyle,),
                  ],
                ),
                VerticalGap(5),
                Container(
                  width: 376,
                  height: 55,
                  decoration: Decor,
                  child: Center(child: Text('10.08.23',style: T1textStyle,)),
                ),
                VerticalGap(10),
                Row(
                  children: [
                    Text('Location',style: T1textStyle,),
                  ],
                ),
                VerticalGap(5),
                Container(
                  width: 376,
                  height: 55,
                  decoration: Decor,
                  child: Center(child: Text('Jansons brother street, London',style: T1textStyle,)),
                ),
                VerticalGap(ScreenHeight(context)*0.2),
                RoundedButton2(text: 'Publish')
              ],
            ),
          )
        ],
      ),
    );
  }
}
