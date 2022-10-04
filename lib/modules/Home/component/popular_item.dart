import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/modules/Home/model/pop_model.dart';

import '../../../components/const.dart';


Widget buildPopularCard(context,PopularModel model)=>Material(
  elevation: 5,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  borderRadius: BorderRadius.circular(20.0),
  type: MaterialType.card,
  child: Container(
    height: 190,
    width: 130,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cgraytx
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage('${model.image}'),
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${model.type}',style: Theme.of(context).textTheme.bodyText1,),
              Text('${model.description}',style: TextStyle(
                fontSize: 10,
              ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${model.price}',style:TextStyle(
                      fontSize: 10,
                      color: cbluetx
                  ),),
                  Row(
                    children: [
                      Text('${model.reting}',style:TextStyle(
                          fontSize: 10,
                          color: cbluetx,
                          fontWeight: FontWeight.bold
                      ),),
                      Icon(Icons.star,size: 10,color: cbluetx,)
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  ),
);
