import 'package:flutter/material.dart';
import 'package:version1/widgets/Splinegraph.dart';

class SplineWidget extends StatelessWidget {
  var heading="",imagename="";Color color1;
  SplineWidget({super.key,required this.heading,required this.imagename,required this.color1});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 160,
          height: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.white),
              boxShadow: [BoxShadow(blurRadius: 45, color: Colors.grey.shade500)]),
          child: Column(
            children: [
              Row(
                  children: [
                   const SizedBox(width: 10),
                    Text(
                      heading,
                      style:const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      imagename,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              SizedBox(height:20),
              Container(
                  width:120,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: SplineGraph(color:color1)),
            ],
          ),
        );
  }
}
