import 'package:clientapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(

      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 17, horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              )),
          SizedBox(height: 20.h,),
          Container(
            height: 209.h,
            width: 300.w,
            margin: EdgeInsets.symmetric(horizontal: 57.w),
            decoration:
            BoxDecoration(
              image: DecorationImage(
                image:
                AssetImage(
                    "images/profileOops.png"
                ),
              ),
            ),
          ),
          SizedBox(
            height: 59.h,
          ),
          Center(
            child: Text( '''Oops ! Vous n'avez 
  pas connecté(e)''' ,
              style: TextStyle(
                fontSize: 22.sp ,
                color: Colors.black ,
                fontFamily:'Poppins' ,
                fontWeight: FontWeight.bold ,
              ),
            ),
          ) ,
          SizedBox(height: 81.h,) ,
         /* SizedBox(
            width: 200.w,
            height: 60.h,
            child: ElevatedButton(
              onPressed: (){
              },
              child: Text(
                'Inscrivez vous',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily:'Poppins' ,
                  fontWeight: FontWeight.bold ,
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
          ),*/

          //SizedBox(height: 22.h,),
          SizedBox(
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
                'Connectez vous',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily:'Poppins' ,
                  fontWeight: FontWeight.bold ,
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


        ],
      ),
    ));
  }
}