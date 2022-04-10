import 'package:flutter/material.dart';
import '../Model/slide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.w, 20.h, 0.w, 0.h),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  //shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage(slideList[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Text(
                slideList[index].title,
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 24,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: 1.2.sp,
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                slideList[index].description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20.sp,
                    color: Colors.black
                ),
                textScaleFactor: 0.96.sp,
              ),
            ],
          )
        ],
      ),

    );
  }
}