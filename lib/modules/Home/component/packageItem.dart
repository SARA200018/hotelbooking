import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/components/components.dart';
import 'package:hotel_booking/modules/DetailHotel/details_home.dart';
import 'package:hotel_booking/modules/Home/model/package_model.dart';
import '../../../components/const.dart';

Widget PackageItem(context,PackageModel model)=>GestureDetector(
  onTap: (){
    navigatTo(context, const DetailHome());
  },
  child:   Material(
    elevation: 10,

    clipBehavior: Clip.antiAliasWithSaveLayer,
    borderRadius: BorderRadius.circular(20.0),
    type: MaterialType.card,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 300.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                      '${model.image}',
                    ),
                    fit: BoxFit.fill,
                 ),
                ),
            ),
            Expanded(
              flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8,
                      left: 8
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${model.location}',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16
                      ),),
                      const SizedBox(height: 5,),
                      Row(
                        children: const [
                          Icon(Icons.location_on_sharp,size: 5,),
                          Text('Kensington palace',style: TextStyle(
                              fontSize: 10
                          ),),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Text('${model.price}',style:TextStyle(
                          fontSize: 10,
                          color: cbluetx)),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Image(image: AssetImage('assets/images/sports-car.png')),
                            Image(image: AssetImage('assets/images/bath.png')),
                            Image(image: AssetImage('assets/images/Path 15.png')),
                            Image(image: AssetImage('assets/images/wifi.png')),
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
            SizedBox(
              width:50,
              height: 120,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                    primary: cblue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)
                    )
                ),
                onPressed: (){},
                child:const RotatedBox(
                    quarterTurns: 3,
                    child: Text('Book now',style: TextStyle(color: Colors.white),)) ,
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);