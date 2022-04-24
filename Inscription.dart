import 'package:clientapp/Home.dart';
import 'package:clientapp/Recuperation1.dart';
import 'package:clientapp/Verification.dart';
import 'package:flutter/material.dart';
import 'package:clientapp/Login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Inscription extends StatefulWidget{
  const Inscription ({Key? key}): super(key : key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription>{
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
                    'images/BG.png'
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),

            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment(38,0),
                        width: 110.w,
                        height: 60.h,
                        padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                        child: OutlinedButton(
                          child: Text(
                            "Découvrir",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xffF54749),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Color(0xffF54749),
                                width: 3,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),

                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()
                                )
                            );
                          },
                        ),
                      ),
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
                                        'images/man.png',
                                      )
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(50.w, 0.h, 50.w, 0.h),
                        child: Container(
                          height: 80.h,
                          width: 360.w,
                          child: Center(
                            child :Text(
                              'Inscription',
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
                                        padding: EdgeInsets.fromLTRB(5.w, 10.h, 5.w, 5.h),
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
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(5.w, 20.h, 5.w, 5.h),
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
                                                      width: 2.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              labelText: "Nom d'utilisateur",
                                              labelStyle: TextStyle(
                                                  color: Color(0xffa7a7a7),
                                                  fontSize: 16.sp,
                                                  fontFamily: 'poppins'
                                              ),
                                              filled: true,
                                              fillColor: Colors.transparent,
                                            ),
                                            keyboardType: TextInputType.text,
                                            textInputAction: TextInputAction.next,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(5.w, 20.h, 5.w, 0.h),
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
                                        padding: EdgeInsets.fromLTRB(5.w, 20.h, 5.w, 0.h),
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
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(50.w, 20.h, 50.w, 5.h),
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
                                                    builder: (context) => Verification()
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
                                                builder:(context) => Login()
                                            )
                                        );
                                      },
                                      child: Text(
                                        'Vous avez déjà un compte ?                               Connectez-vous !',
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                physics: NeverScrollableScrollPhysics(),
              ),
            )
          ],
        )
    );
  }

}