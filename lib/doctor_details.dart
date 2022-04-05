import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/rating_icon.dart';

class DoctorDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20,right: 20,top:20),
        child:
          Column(
            children: [
              Container(
                height: 300.0,
                width: double.infinity,
                decoration: const  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/doctor.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child:
                Stack(
                  children: [
                    Positioned(child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 320,right: 20,),
                      width: 70.0,
                      height: 20,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  width: 1.0,
                                  color: Colors.grey,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.favorite_border_sharp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 270,top:215),
                      color: Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),bottomLeft: Radius.circular(5),),
                      ),
                      child:Container(
                           width: 80.0,
                           height: 80.0,
                           color: Colors.lightBlueAccent,
                           child: Column(
                             children: [
                               Text("5.0", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                               textAlign: TextAlign.center,),
                               Text("Review", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                                 textAlign: TextAlign.center,),
                             ],
                           ),
                      ),
                      ),
                  ],

                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: const [
                  Text("Doctor.Name", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                  Text("Doctor.specialist", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                    textAlign: TextAlign.center,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("About", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),
                    textAlign: TextAlign.center,),
                  RatingIcon(),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade200,
                child: Text(" Description About Doctor", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),
                  textAlign: TextAlign.center,),
              ),
              SizedBox(height:15,),
              Row(
                children: const [
                  Text("Destination", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                    textAlign: TextAlign.left,),
                  ],),
                  SizedBox(height:5,),
              Row(
                children: const [
                  Text("Destination Name", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                    textAlign: TextAlign.left,),
                ],),
              SizedBox(height:15,),
             Container(
               height: 100,
               child: 
               Row(
                 children: [
                   Icon(
                     Icons.circle,size: 50,color: Colors.lightBlue.shade200,
                   ),
                   Expanded(
                     child:
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text("Appointment Time",
                         textAlign: TextAlign.left,
                         style: TextStyle(height:5,fontSize:12,fontWeight: FontWeight.bold) ,),
                       Text("9.00 Am-5.00 Pm ",
                         textAlign: TextAlign.left,
                         style: TextStyle(fontSize:12,fontWeight: FontWeight.bold) ,),
                     ],
                   ),
                   ),
                   Expanded(child:  Row(
                     children: [
                       Icon(
                         Icons.circle,size: 50,color: Colors.lightBlue.shade200,
                       ),
                       Expanded(
                         child:Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: const [
                               Text("Saturday to Friday",
                                 textAlign: TextAlign.left,
                                 style: TextStyle(height:5,fontSize:12,fontWeight: FontWeight.bold) ,),

                             ],
                           ),
                         ),
                         ),

                     ],
                   ),)

                 ],
               ),
             ),
              SizedBox(height:15,),
              MaterialButton(
                minWidth: double.infinity,
                color: Colors.lightBlue.shade200,
                height: 60,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Application",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ],
          ),
    ),
    );
  }
}
