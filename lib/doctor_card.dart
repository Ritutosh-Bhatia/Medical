import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/doctor_details.dart';
import 'package:untitled4/rating_icon.dart';


class DoctorCard extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return
    Row(
      children: [
        Expanded(child: Card(
          color: Colors.lightBlueAccent,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            padding: EdgeInsets.all(12.0),
            width: double.infinity,
            height: 100.0,
            child: Row(
              children: [
                Container(
                  width: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    image: const DecorationImage(
                      image: AssetImage("images/doctor.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Doctor Name",
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6.0),
                        const Text(
                          "Doctor.specialist",
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Text(
                          "doctor.timing",
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            RatingIcon(),
                            Spacer(),
                            const Text(
                              "doctor.review",)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Container(
                  width: 70.0,
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
                      SizedBox(height: 12.0),
                      Expanded(
                        flex: 1,
                        child:  IconButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>  DoctorDetail()));
                          },
                          icon: const Icon(Icons.arrow_forward_outlined,size: 35,color: Colors.grey,),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
        // Expanded(
        //     child:
        //         Column(
        // children: [
        //   Card(
        //     color: Colors.lightBlueAccent,
        //     elevation: 1.0,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(12.0),
        //     ),
        //     child: Container(
        //       padding: EdgeInsets.all(12.0),
        //       width: 30,
        //       height: 80.0,
        //       color: Colors.yellow,
        //     ),
        //   ),
        // ],
        // )
        //
        // ),
      ],

    );
}
}