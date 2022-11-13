import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_button.dart';
import '../../../../constants/app_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  SecondPageView({Key? key}) : super(key: key);
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 8.0.h,left: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTxt(
                txt: "Give your ID",
                weight: FontWeight.w700,
                size: 18.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTxt(
                txt:
                    "Lorem Ipsum is simply dummy text of the printing and \n typesetting industry.",
                weight: FontWeight.w500,
                size: 12.sp,
                color: const Color(0xFF746A6A),
              ),
              SizedBox(
                height: 5.h,
              ),  ListTile(
                 leading: Image.asset("assets/txt_field_icon.png",height: 19.h,width: 19.w,),
                title: Transform.translate(
                  offset: Offset(-16,0),
                  child:  TextField(
                    decoration: InputDecoration.collapsed(
                       hintText: 'Select your Institute',
                    hintStyle:TextStyle(
                      color: Color(0xFF746A6A),
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp
                    ), ),

                  ),
                ),
                 trailing: DropdownButtonHideUnderline(
                   child: DropdownButton(

                    // Initial Value

                   // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (Object? value) {},
                  ),
                 ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0.w,right: 15.0.w),
                child: Divider(
                  thickness: 1,
                 ),
              ),
               SizedBox(
                width: 5.h,
               ),
               ListTile(
                 leading: Icon(Icons.person_outline),
                title: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Type Your Id",
                    hintStyle: TextStyle(
                        color: Color(0xFFD6D5D3),
                        fontFamily: "SF Pro Display",
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),),
                  ),

                minLeadingWidth: 10.w,

               ),
              Padding(
                padding:  EdgeInsets.only(left: 8.0.w,right: 15.0.w),
                child: Divider(
                  thickness: 1,

                ),
              ),
               SizedBox(
                height: 5.h,
               ),
              SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: AppButton(
                      txt: "Continue",
                      page: Routes.THIRD_PAGE,
                      background_color: const Color(0xFFA369BF),
                      txt_color: Colors.white)
                //
                  )
            ],
          ),
        ),
      ),
    );
  }
}

AppBar appbarDesign() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/appbar-logo.png",
          height: AppBar().preferredSize.height - 16.h,
        ),
        SizedBox(
          width: 5.h,
        ),
        CustomTxt(
          txt: "My Campus",
          weight: FontWeight.w700,
          size: 16.sp,
          //dsf: GoogleFonts.getFont('Gorditas'),
          color: Colors.purple,
        ),
        SizedBox(
          width: 3.w,
        ),
      ],
    ),
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
  );
}
