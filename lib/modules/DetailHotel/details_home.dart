
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/components/const.dart';
import 'package:hotel_booking/modules/DetailHotel/component/build_slider.dart';
import 'package:hotel_booking/modules/DetailHotel/component/footer.dart';
import '../../components/components.dart';
import 'component/animi_item.dart';
import 'model/aminities.dart';
import 'model/model_slid.dart';

class DetailHome extends StatefulWidget {
  const DetailHome({Key? key}) : super(key: key);

  @override
  State<DetailHome> createState() => _DetailHomeState();
}

class _DetailHomeState extends State<DetailHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 250.h,
                child: Stack(
                  children: [
                    PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => buildSliderItem(imageSlider[index],context),
                      itemCount: 2,
                      controller: pageViewController,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: smoothIndicatorItem()
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Platinum Grand',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 20.sp
                      ),),
                      Row(
                        children: [
                          const Text('Tokyo square, Japan -',),
                          InkWell(
                              onTap: (){},
                              child: const Text('Show in map',style: TextStyle(color: Colors.grey)))
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                          'This upscale, contemporary hotel is 2 km from Hazrat Shahjalal '
                          'International Airport and 11 km from Jatiyo Sangsad Bhaban,'
                          'the Bangladesh Parliament complex.',
                        style: TextStyle(color: cbluegray),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Price',style: TextStyle(
                                  fontSize: 16,
                                  color: cbluegray
                              )),
                              const SizedBox(height: 5,),
                              const Text('\$120')
                            ],
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text('Reviews',style: TextStyle(
                                    fontSize: 16,
                                    color: cbluegray
                                )),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('4.5',style:TextStyle(
                                        fontSize: 12,
                                        color: cbluetx,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Icon(Icons.star,size: 10,color: cbluetx,)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text('Recently booked',style: TextStyle(
                                  fontSize: 16,
                                  color: cbluegray
                                ),),
                                const SizedBox(height: 5,),
                                const Image(image: AssetImage('assets/images/Group 304.png'))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Text('Aminities',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 20
                      ),),
                      SizedBox(height: 10.h,),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index)=>aminitiesItem(context,Ammodel[index]) ,
                            separatorBuilder: (context,index)=>const SizedBox(width:40),
                            itemCount:Ammodel.length
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      FooterItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),


  );
}}

