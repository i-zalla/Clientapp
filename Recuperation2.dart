import 'package:clientapp/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recuperation2 extends StatefulWidget{
  const Recuperation2({Key? key}) : super (key: key);

  @override
  _Recuperation2 createState() => _Recuperation2();
}

class _Recuperation2 extends State<Recuperation2>{
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/BG.png',
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back,
                            size: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(50.w, 0.h, 50.w, 0.h),
                        child: Container(
                          height: 162.h,
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
                        padding: EdgeInsets.fromLTRB(40.w, 30.h, 40.w, 20.h),
                        child: Container(
                          height: 40.h,
                          width: 360.w,
                          child: Center(
                            child :Text(
                              'Récupération',
                              textScaleFactor: 0.96.sp,
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 40.sp,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 340.w,
                        height: 400.h,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(5.w, 20.h, 5.w, 20.h),
                                        child: Container(
                                          height: 50.h,
                                          width: 288.w,
                                          color: Colors.transparent,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xffF54749),
                                                      width: 2.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xffF54749),
                                                    width: 2.5,
                                                  ),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              labelText: 'Mot de passe',
                                              labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16.sp,
                                                  fontFamily: 'poppins'
                                              ),
                                              suffixIcon: IconButton(
                                                icon: Icon(
                                                  _secureText
                                                      ? Icons.remove_red_eye
                                                      : Icons.visibility_off,
                                                  color: Colors.grey[500],
                                                ),
                                                iconSize: 16.sp,
                                                onPressed: (){
                                                  setState(() {
                                                    _secureText = !_secureText;
                                                  });
                                                },
                                              ),
                                              filled: true,
                                              fillColor: Colors.transparent,
                                            ),
                                            obscureText: _secureText,
                                            textInputAction: TextInputAction.done,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(5.w, 20.h, 5.w, 40.h),
                                        child: Container(
                                          height: 50.h,
                                          width: 288.w,
                                          color: Colors.transparent,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xffF54749),
                                                      width: 2.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xffF54749),
                                                    width: 2.5,
                                                  ),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              labelText: 'Confirmer le mot de passe',
                                              labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16.sp,
                                                  fontFamily: 'poppins'
                                              ),
                                              suffixIcon: IconButton(
                                                icon: Icon(
                                                  _secureText
                                                      ? Icons.remove_red_eye
                                                      : Icons.visibility_off,
                                                  color: Colors.grey[500],
                                                ),
                                                iconSize: 16.sp,
                                                onPressed: (){
                                                  setState(() {
                                                    _secureText = !_secureText;
                                                  });
                                                },
                                              ),
                                              filled: true,
                                              fillColor: Colors.transparent,
                                            ),
                                            obscureText: _secureText,
                                            textInputAction: TextInputAction.done,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),

                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(50.w, 60.h, 50.w, 10.h),
                              child: Container(
                                color: Colors.transparent,
                                child: SizedBox(
                                  width: 195.w,
                                  height: 42.h,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Home()
                                          )
                                      );
                                    },
                                    child: Text(
                                      'Continuer',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.grey,
                                        primary: Color(0xffF54749),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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