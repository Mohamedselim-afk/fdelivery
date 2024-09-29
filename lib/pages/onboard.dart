import 'package:fdelivery/pages/signup.dart';
import 'package:fdelivery/widget/content_model.dart';
import 'package:fdelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
   Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

 int currentIndext=0;
 late PageController _controller;

 @override
  void initState() {
   _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          child: PageView.builder(
            controller:  _controller,
              itemCount: contents.length,
              onPageChanged: (int index){
              setState(() {
                currentIndext=index;
              });
              },
              itemBuilder: (_,i){
            return Padding(padding:  EdgeInsets.only(top: 40,left: 20,right: 20),
              child: Column(children: [
                Image.asset(contents[i].image, height: 480,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                 SizedBox(height: 40,),
                Text(contents[i].title,style: AppWidget.semiboldTextFeildStyle(),),
                 SizedBox(height: 20,),
                Text(contents[i].description,style: AppWidget.LightTextFeildStyle(),),
              ],
              ),
            );
          }),
        ),
        Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            contents.length,
                (index) => buildDot(index, context),
          ),
        ),
        ),

        GestureDetector(
          onTap: (){
            if(currentIndext == contents.length-1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SignUP()));
            }
            _controller.nextPage(duration:  Duration(milliseconds: 100), curve: Curves.bounceIn);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(30)),
            height: 60,
            margin:  EdgeInsets.all(40),
            width: double.infinity,
            child:  Center(
              child: Text(
                currentIndext == contents.length-1?"Start":'Next',
                style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context){
   return Container(
     height: 10,
     width: currentIndext==index? 9:21,
     margin:  EdgeInsets.only(right: 5),
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black45),
   );
  }
}
