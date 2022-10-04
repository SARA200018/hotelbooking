
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void navigatTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
      builder: (context) => widget),
);

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
      builder: (context) => widget
  ),
      (rout) => false,
);

var pageViewController = PageController();


Widget smoothIndicatorItem()=>SmoothPageIndicator(
  effect: ExpandingDotsEffect(
    dotColor: Colors.grey,
    dotHeight: 5,
    dotWidth: 10,
    spacing: 5,
    expansionFactor: 2,
    activeDotColor: Colors.white,
  ),
  count: 2,
  controller:pageViewController,
);

var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none
);

Widget SearchItem() => Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(20),
  child: Container(
    height: 50.h,
    width: double.infinity,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'Search for hotels',
        filled: true,
        fillColor: HexColor('#EFEEEE'),
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
    ),
  ),
);


Widget defualtTextFromField({
  required TextEditingController controller,
  required String label,
  required IconData prefixIcon,
  required TextInputType keyboardType,
  String? Function(String?)? validator,
  Function()? onTap,
  String? Function(String?)? onChange,
  String? Function(String?)? onSubmitted,
  TextStyle? labelStyle,
  TextStyle? styleOutDecoration,
  String? hintText,
  double hintStyleFS = 15,
  double borderSideWidth = 3,
  double borderRadiusCircular = 13,
  Color? prefixIconColor,
  IconData? suffixIcon,
  Function()? suffixPressed,
  bool isobscureText = false,
  String? InitialValue
}) =>
    TextFormField(
      initialValue: InitialValue,
      validator: validator,
      controller: controller,
      onTap: onTap,
      onChanged: onChange,
      onFieldSubmitted: onSubmitted,
      keyboardType: keyboardType,
      style: styleOutDecoration,
      obscureText: isobscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: hintStyleFS,
          color: Colors.grey,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: prefixIconColor,
        ),
        label: Text(label),
        labelStyle: labelStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: borderSideWidth, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(borderRadiusCircular)),
        ),
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffixIcon),
        ),
      ),
    );

Widget defaultMaterialButton(
    {
      required Function() onPressed,
      Color backgroundColorButton = Colors.lightBlueAccent,
      double width = double.infinity,
      bool isUpperCase = false,
      String text ='',
      Color textColor = Colors.white,
      double paddingSpace = 16.0,
      double raduis = 20.0,
    }) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(raduis)),
      ),
      child: MaterialButton(
        color: backgroundColorButton,
        onPressed: onPressed,
        height: 40,
        child: Text(
          isUpperCase? text.toUpperCase() : text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
      ),
    );

Widget defaultTextButton ({
  required Function() onPressed,
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) => TextButton(
  onPressed: onPressed,
  child: Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,

    ),
  ),
);


Widget divider ({required Color color, double? withOpacity}) => Container(
  width: double.infinity,
  height: 1,
  color: color,
);

void printFullText(String text){

  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

Widget header (context){
  Size size = MediaQuery.of(context).size;
  return Column(
    children: [
      Container(
        height: size.height*0.2,
        child: Stack(
          children: [
            Container(
              height: size.height*0.2 -27,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.cyan.withOpacity(0.23),
                      )]
                  ),
                  child: Row(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            color: Colors.cyan,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),

                      )
                    ],
                  ),
                ))
          ],
        ),

      ),
    ],
  );
}