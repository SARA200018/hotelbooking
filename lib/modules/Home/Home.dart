import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/modules/Home/component/packageItem.dart';
import '../../components/components.dart';
import '../../components/const.dart';
import 'component/popular_item.dart';
import 'model/package_model.dart';
import 'model/pop_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Pragathesh',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontSize: 18, fontFamily: 'Futura',color: Colors.grey),
                        ),
                        Text(
                          'Find your hotel',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    Container(
                      height: 70.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Image(
                        image: AssetImage('assets/images/person.png'),
                      ),
                    )
                  ],
                ),
                 SizedBox(
                  height: 20.h,
                ),
                SearchItem(),
                 SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Popular hotels',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 20.sp),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(bottom: 8),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          buildPopularCard(context, pop_model[index]),
                          separatorBuilder: (context, index) =>  const SizedBox(
                            width: 20,
                          ),
                      itemCount: pop_model.length),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text('Hot packages',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 20.sp, fontWeight: FontWeight.w500)),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: cbluetx,
                            fontSize: 14.sp,
                          ),
                        )),
                  ],
                ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.h,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context,index)=>PackageItem(context,pack_model[index]),
                          separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
                          itemCount: pack_model.length),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
