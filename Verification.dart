import 'package:clientapp/Home.dart';
import 'package:clientapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verification extends StatefulWidget{
  const Verification({Key? key}) : super(key: key);

  @override
  _Verification createState() => _Verification();
}

class _Verification extends State<Verification>{

  @override
  Widget build(BuildContext context) {
    bool _secureText = true;

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
              resizeToAvoidBottomInset: false,
// replaces the SingleChildScrollView && NeverScrollableScrollPhysics() together so it's better to use it to avoid any technical problems

              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
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
                        padding: EdgeInsets.fromLTRB(50.w, 20.h, 50.w, 0.h),
                        child: Container(
                          height: 40.h,
                          width: 360.w,
                          child: Center(
                            child :Text(
                              'Vérification',
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
                        padding: EdgeInsets.fromLTRB(50, 60, 50,10),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        width: 350,
                        height: 200,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _textFieldOTP(first: true, last: false),
                                _textFieldOTP(first: false, last: false),
                                _textFieldOTP(first: false, last: false),
                                _textFieldOTP(first: false, last: true),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 360.w,
                        height: 220.h,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(50.w, 20.h, 50.w, 10.h),
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
                                                'Inscription',
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
                                      TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder:(context) => Verification()
                                                )
                                            );
                                          },
                                          child: Text(
                                            " Vous n'avez pas reçu le code ? Renvoyer le code ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              decoration:
                                              TextDecoration.underline,
                                            ),
                                          )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
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
  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: 45,
      width: 40,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: true,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.circular(5)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Color(0xffF54749)
                ),
                borderRadius: BorderRadius.circular(5)
            ),
          ),
        ),
      ),
    );
  }
}



