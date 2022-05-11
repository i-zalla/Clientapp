import 'package:clientapp/Home.dart';
import 'package:clientapp/Login.dart';
import 'package:clientapp/Model/slide.dart';
import 'package:clientapp/Page.dart';
import 'package:clientapp/Widgets/SlideItems.dart';
import 'package:clientapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/slidedots.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatefulWidget{

  @override
  _onBoarding createState() => _onBoarding();
}

class _onBoarding extends State<OnBoarding>{
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState(){
    super.initState();
    Timer.periodic(
        Duration(seconds: 500),
            (Timer timer) {
          if (_currentPage < 2){
            _currentPage++;
          } else {
            _currentPage = 0;
          }

          _pageController.animateToPage(
              _currentPage,
              duration: Duration(seconds: 150),
              curve: Curves.ease
          );
            }
        );
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

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
                  fit: BoxFit.cover,
                )
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Stack(
                            alignment: Alignment(0,1.1),
                            children: <Widget>[
                              PageView.builder(
                                scrollDirection: Axis.horizontal,
                                controller: _pageController,
                                onPageChanged: _onPageChanged,
                                itemCount: slideList.length,
                                itemBuilder: (ctx, i) => SlideItem(i),
                              ),
                              Stack(
                                alignment: AlignmentDirectional.topStart,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(bottom: 40),
                                    child: Row(
                                      //mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        for(int i = 0; i<slideList.length; i++)
                                          if( i == _currentPage )
                                            SlideDots(true)
                                          else
                                            SlideDots(false)
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                         /* Padding(
                            padding: EdgeInsets.fromLTRB(60, 5, 60, 10),
                            child: Container(
                              color: Colors.transparent,
                              child: SizedBox(
                                width: 200.w,
                                height: 60.h,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Inscription()
                                        )
                                    );
                                  },
                                  child: Text(
                                    'Inscrivez-vous',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.grey,
                                      primary: Color(0xffffda82),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),*/

                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 10, 60, 0),
                            child: Container(
                              color: Colors.transparent,
                              child: SizedBox(
                                width: 200.w,
                                height: 60.h,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()
                                        )
                                    );
                                  },
                                  child: Text(
                                    'Connectez-vous',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.grey,
                                      primary: Color(0xffffda82),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 110.w,
                            height: 50.h,
                            padding: EdgeInsets.fromLTRB(80, 0, 80, 5),
                            margin: EdgeInsets.all(25),
                            child: OutlinedButton(
                              child: Text(
                                "Découvrir",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.black
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Color(0xffffda82),
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
                                        builder: (context) => Main_Page()
                                    )
                                );
                              },
                            ),
                          ),
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

