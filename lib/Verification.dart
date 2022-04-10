import 'package:clientapp/Inscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verification extends StatelessWidget{
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/BG.png'
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            Scaffold(
              floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
              floatingActionButton: SizedBox.fromSize(
                size: Size.fromRadius(20),
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Inscription()
                        )
                    );
                  },
                  child: Icon(
                      Icons.arrow_back,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(50.w, 0.h, 0.w, 0.h),
                            child: Container(
                              height: 170.h,
                              width: 360.w,
                              child: Center(
                                child:Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'images/verification.png',
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                            child: Container(
                              height: 80.h,
                              width: 360.w,
                              child: Center(
                                child: Text(
                                    'Vérification',
                                    textScaleFactor: 0.96.sp,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 40.sp,
                                      color: Colors.black,
                                    )
                                ),
                              ),
                            ),
                            ),
                          Container(

                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );

  }
}