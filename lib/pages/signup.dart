import 'package:fdelivery/pages/login.dart';
import 'package:fdelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFff5c30),
                        Color(0xFFe74b1a),
                      ])),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60,left: 20,right: 20),
              child: Column(children: [
                Center(child: Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width/1,fit: BoxFit.cover,)),
                SizedBox(height: 50,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.only(left:20, right: 20 ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.6,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Text("Sign up",style: AppWidget.HeadlineTextFeildStyle(),),
                        SizedBox(height: 30,),
                        TextField(
                          decoration: InputDecoration(hintText: 'Name',helperStyle:AppWidget.semiboldTextFeildStyle(),prefixIcon:Icon(Icons.person)  ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          decoration: InputDecoration(hintText: 'Email',helperStyle:AppWidget.semiboldTextFeildStyle(),prefixIcon:Icon(Icons.email)  ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: 'Password',helperStyle:AppWidget.semiboldTextFeildStyle(),prefixIcon:Icon(Icons.password)  ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: 'Confirm Password',helperStyle:AppWidget.semiboldTextFeildStyle(),prefixIcon:Icon(Icons.password)  ),
                        ),
                        SizedBox(height: 50,),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            width: 200,
                            decoration: BoxDecoration(color: Color(0Xffff5722), borderRadius: BorderRadius.circular(20)),
                            child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize:18,fontFamily: "Poppins" ,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                    child: Text("Already have an account? Login",style: AppWidget.semiboldTextFeildStyle(),))
              ],),
            )
          ],
        ),
      ),
    );
  }
}
