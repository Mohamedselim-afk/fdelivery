import 'package:fdelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          Image.asset("assets/images/salad2.png",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2.5, fit: BoxFit.fill,),
            SizedBox(height: 20,),
            Row(
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mediterranean", style: AppWidget.semiboldTextFeildStyle(),),
                  Text("Chickpea Salad", style: AppWidget.boldTextFeildStyle(),),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  if (a>1) {
                    --a;
                  }
                  setState(() {

                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                  child:Icon(Icons.remove,color: Colors.white,size: 25,) ,
                ),
              ),
                SizedBox(width: 20,),
                Text(a.toString(),style: AppWidget.semiboldTextFeildStyle(),),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                    child:Icon(Icons.add,color: Colors.white,size: 25,) ,
                  ),
                ),
            ],
            ),
            SizedBox(height: 20.0,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text every since the 1500s,when an unknown printer took a galley of type and scrambled it mack a type specimen book.",
              style: AppWidget.LightTextFeildStyle(),
            ),
            SizedBox(height: 30.0,),
            Row(children: [
              Text("Delivery Time", style: AppWidget.semiboldTextFeildStyle(),),
              SizedBox(width: 25,),
              Icon(Icons.alarm,color: Colors.black54,),
              SizedBox(width: 5,),
              Text("30 min",style: AppWidget.semiboldTextFeildStyle(),)
            ],),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Total Price",style: AppWidget.semiboldTextFeildStyle(),),
                  Text("\$28",style: AppWidget.HeadlineTextFeildStyle(),),
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("Add to cart",style:TextStyle(color: Colors.white, fontSize: 16.0,fontFamily: 'Poppins'),),
                    SizedBox(width:40 ,),
                      Container(
                      padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,)
                    ),
                      SizedBox(width: 10,),
                  ],),
                ),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
