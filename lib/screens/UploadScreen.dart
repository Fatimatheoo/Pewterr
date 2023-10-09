import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_first_app/screens/AddJob.dart';
import 'package:my_first_app/screens/DetailScreen.dart';
import 'package:my_first_app/utilitis/button.dart';
import 'package:my_first_app/utilitis/colors.dart';
import 'package:my_first_app/utilitis/widgets/customaddbutton.dart';

import '../utilitis/decor.dart';
import '../utilitis/gaps.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import '../utilitis/widgets/custombackbutton.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile> ImageFileList = [];
  void SelectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if(selectedImages!.isNotEmpty){
      ImageFileList!.addAll(selectedImages);
    }
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: Column(
          children: [
            VerticalGap(ScreenHeight(context)*0.05),
            Row(
              children: [
                HorizontalGap(14),
                CustomBackButton(ontap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailScreen()));
                }),
                HorizontalGap(ScreenWidth(context)*0.3),
                Text('Add Job',style: T3textStyle,),
              ],
            ),
            VerticalGap(19),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Upload Images',style: T2textStyle,)
                ],
              ),
            ),
            Center(child: CustomAddButton(ontap: (){SelectImages();})),
            Expanded(child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
              ),
              itemCount: ImageFileList!.length,
              itemBuilder: (BuildContext context, int index)
                {
                  return Container(
                    height: 80,
                    width: 80,
                    decoration: decor,
                    child: Image.file(File(ImageFileList[index].path),
                      fit: BoxFit.cover,
                    ),
                  );
                },
            )),
            RoundedButton2(text: 'Next',
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> AddJob()));
            },)
          ],
        ),
    );
  }
}