import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/doctor_card.dart';
import 'homebottombar.dart';
import 'homescreen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        SingleChildScrollView(
          child:
          Column(
            children:  [
              Container(
                padding: EdgeInsets.only(
                    top: 5,bottom: 5),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.black)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search_outlined,color: Colors.grey,size:30,
                      ),
                      hintText: "Search",
                      suffixIcon: Icon(Icons.category_outlined),
                      hintStyle: TextStyle(color: Colors.lightBlue)
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.only(left: 20,right: 20,top:3,bottom: 10),
                margin: EdgeInsets.only(left: 20,right: 20,top:5,bottom: 5),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image.asset("images/covid.jpg", scale: 0.5,),

                ),
              ),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children: const [
                    Text("Category", style: TextStyle(color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold)),
                    SizedBox(width: 210.0,),
                    Text("See all", style: TextStyle(color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120.0,

                child: ListView(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 15.0,bottom: 15.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(18.0),
                                topLeft: Radius.circular(18.0),
                                bottomLeft: Radius.circular(18.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 20,
                                  color: Colors.grey,
                                ),
                              ]
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                            child: Image.asset("images/cardiology.jpg", scale: 1,),
                          ),

                        ),
                        SizedBox(width: 30,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(18.0),
                                topLeft: Radius.circular(18.0),
                                bottomLeft: Radius.circular(18.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 20,
                                  color: Colors.grey,
                                ),
                              ]
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                            child: Image.asset("images/covidtest.jpg", scale: 0.5,),
                          ),

                        ),
                        SizedBox(width: 30,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(18.0),
                                topLeft: Radius.circular(18.0),
                                bottomLeft: Radius.circular(18.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 20,
                                  color: Colors.grey,
                                ),
                              ]
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                            child:Image.asset("images/chemical.jpeg",),
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 5),
                child: Row(
                  children: const [
                    Text("Top Doctors", style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),

                  ],
                ),
              ),

              Container(
                  height: 205,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.only(left: 10.0,right: 20),
                  child: ListView.builder(scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return DoctorCard();
                        //   Container(
                        //     width: 80,
                        //     height: 100,
                        //     padding: const EdgeInsets.all(10.0),
                        //     decoration: BoxDecoration(
                        //         color: Colors.lightBlueAccent,
                        //         borderRadius: BorderRadius.circular(20.0),
                        //       image: const DecorationImage(
                        //         image: AssetImage("images/doctor.jpg") ,
                        //         fit: BoxFit.fitHeight,
                        //       ),
                        //     ),
                        //     // child: Row(
                        //     //   children:  [
                        //     //     Image.asset("images/doctor.jpg",scale: 0.5,),
                        //     //     SizedBox(height: 20.0,),
                        //     //     Text("Dr Bulabuki", style: TextStyle(
                        //     //         color: Colors.black, fontSize: 15),
                        //     //     ),
                        //     //   ],
                        //     // )
                        // );
                      })
              ),
            ],
          ),
        );

  }
}