import 'package:fdelivery/pages/details.dart';
import 'package:fdelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool icecream= false, pizza=false, salad=false, burger=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0,left: 20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Mohamed",
                  style: AppWidget.boldTextFeildStyle() ,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.shopping_cart, color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Text("Delicious Food",style: AppWidget.HeadlineTextFeildStyle()           ,),
            Text("Discovery and Get Great Food",
              style: AppWidget.LightTextFeildStyle()),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
                child: showItems()),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                  },
                  child: Container(
                    margin:EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("assets/images/salad2.png", height: 130,width:130,fit:BoxFit.cover ),
                          Text("Veggie Taco Hash", style: AppWidget.semiboldTextFeildStyle(),),
                            SizedBox(height: 5,),
                            Text("Fresh and Healthy", style: AppWidget.LightTextFeildStyle(),),
                            SizedBox(height: 5,),
                            Text("\$25", style: AppWidget.semiboldTextFeildStyle(),)

                        ],),
                      ),
                    ),
                  ),
                ),
                  SizedBox(width:15 ,),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/salad2.png", height: 130,width:130,fit:BoxFit.cover ),
                            Text("Mix Veg Salad", style: AppWidget.semiboldTextFeildStyle(),),
                            SizedBox(height: 5,),
                            Text("Spicy with Onion", style: AppWidget.LightTextFeildStyle(),),
                            SizedBox(height: 5,),
                            Text("\$28", style: AppWidget.semiboldTextFeildStyle(),)

                          ],),
                      ),
                    ),
                  ),
              ],),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                    Image.asset("assets/images/salad2.png", height: 110,width: 110,fit: BoxFit.cover,),
                    SizedBox(width: 20,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                          child: Text("Mediterranean Chickpea Salad",
                            style: AppWidget.semiboldTextFeildStyle(),)),
                      SizedBox(height: 5,),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("Honey goot Cheese ",
                            style: AppWidget.LightTextFeildStyle(),)),
                      SizedBox(height: 5,),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("\$30 ",
                            style: AppWidget.semiboldTextFeildStyle(),)),
                    ],
                    ),

                  ],),
                ),
              ),
            )

      ],
        ),
      ),
    );
  }
  Widget showItems(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap:(){
            icecream=true;
            pizza=false;
            salad=false;
            burger=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: icecream?Colors.black:Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/ice-cream.png", height: 40,width: 40,fit:BoxFit.cover,color: icecream? Colors.white:Colors.black, ),
            ),
          ),
        ),
        GestureDetector(
          onTap:(){
            icecream=false;
            pizza=true;
            salad=false;
            burger=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: pizza?Colors.black:Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/pizza.png", height: 40,width: 40,fit:BoxFit.cover,color: pizza? Colors.white:Colors.black, ),
            ),
          ),
        ),
        GestureDetector(
          onTap:(){
            icecream=false;
            pizza=false;
            salad=true;
            burger=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: salad?Colors.black:Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/salad.png", height: 40,width: 40,fit:BoxFit.cover,color: salad? Colors.white:Colors.black, ),
            ),
          ),
        ),
        GestureDetector(
          onTap:(){
            icecream=false;
            pizza=false;
            salad=false;
            burger=true;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: burger?Colors.black:Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/burger.png", height: 40,width: 40,fit:BoxFit.cover,color: burger? Colors.white:Colors.black, ),
            ),
          ),
        ),
      ],
    );
  }
}
