import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/const.dart';

Widget FooterItem()=>Align(
  alignment: AlignmentDirectional.bottomEnd,
  child: Row(
    children: [
      Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        type: MaterialType.card,
        elevation: 5,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 45.h,
          width: 54.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: cgraytx,
          ),
          child: Icon(Icons.favorite_border_outlined),
        ),
      ),
      SizedBox(
        width: 20.w,
      ),
      Expanded(
        child: Container(
          height: 50.h,
          padding: EdgeInsets.all(5),
          child: TextButton(
            style: ElevatedButton.styleFrom(
                primary: cblue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)
                )
            ),
            onPressed: (){},
            child:Text('Book now',style: TextStyle(color: Colors.white),) ,
          ),
        ),
      ),
    ],),
);