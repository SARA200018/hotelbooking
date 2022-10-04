import 'package:flutter/material.dart';

import '../../../components/const.dart';
import '../model/aminities.dart';

Widget aminitiesItem(context,AminitiesModel model)=>Column(
  children: [
    Material(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      type: MaterialType.card,
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: cgraytx,
        ),
        child: Image(image: AssetImage('${model.image}'),),
      ),
    ),
    SizedBox(height: 5,),
    Text('${model.text}'),
  ],
);