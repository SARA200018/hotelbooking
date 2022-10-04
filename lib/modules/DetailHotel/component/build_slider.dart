import 'package:flutter/material.dart';

import '../details_home.dart';
import '../model/model_slid.dart';

Widget buildSliderItem(model mod,context) => Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.topStart,
      children: [
        Image(
          image: AssetImage('${mod.image}'),
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20
          ),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black87,
                    size: 15,
                  ),
                )),
          ),
        ),
      ],
    );
