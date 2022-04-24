import 'package:clientapp/Recuperation2.dart';
import 'package:flutter/material.dart';
import 'package:clientapp/main.dart';
import 'package:clientapp/Login.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recuperation1 extends StatefulWidget{
  const Recuperation1({Key? key}) : super(key: key);

  @override
  _Recuperation1 createState() => _Recuperation1();
}

class _Recuperation1 extends State<Recuperation1>{
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
                                        'images/mdp oublié.png',
                                      )
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40.w, 10.h, 40.w, 10.h),
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
                                        padding: EdgeInsets.fromLTRB(5.w, 20.h, 5.w, 5.h),
                                        child: Container(
                                          height: 50.h,
                                          width: 288.w,
                                          color: Colors.transparent,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              suffix: Padding(
                                                padding:  EdgeInsets.symmetric(horizontal: 0),
                                                child: TextButton(
                                                  onPressed: (){
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => Recuperation1()
                                                        )
                                                    );
                                                  },
                                                  child: Text(
                                                    'Envoyer',
                                                    style: TextStyle(
                                                      color: Color(0xffF54749),
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                                                      width: 2.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              labelText: 'Numéro de télephone',
                                              labelStyle: TextStyle(
                                                  color: Color(0xffa7a7a7),
                                                  fontSize: 16.sp,
                                                  fontFamily: 'poppins'
                                              ),
                                              filled: true,
                                              fillColor: Colors.transparent,
                                            ),
                                            keyboardType: TextInputType.number,
                                            textInputAction: TextInputAction.next,
                                          ),
                                        ),
                                      ),
                                      /*IconButton(
                                        padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                                       // alignment: Alignment(-1,0),
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder:(context) => Recuperation1()
                                                )
                                            );
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward,
                                            size: 35,
                                            color: Color(0xffF54749),
                                          )
                                      ),*/
                                      Container(
                                        padding: EdgeInsets.fromLTRB(50, 10, 50,0),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        width: 350,
                                        height: 150,
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
                                    ],
                                  )
                                ],
                              ),

                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(50.w, 0.h, 50.w, 10.h),
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
                                              builder: (context) => Recuperation2()
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
                            TextButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder:(context) => Recuperation1()
                                      )
                                  );
                                },
                                child: Text(
                                  " Vous n'avez pas reçu le code ?                       Renvoyer le code ",
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