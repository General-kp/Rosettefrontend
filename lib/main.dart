import 'package:flutter/material.dart';
import 'package:version1/widgets/Progressbar.dart';
import 'package:version1/widgets/Radialchart.dart';
import 'package:version1/widgets/Splinegraph.dart';
import 'package:version1/widgets/Splinewidget.dart';

void main() {
  runApp(MaterialApp(
    home: Tracking(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tracking extends StatelessWidget {
  Tracking({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Venkatesh\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.blue)),
                    TextSpan(
                        text: 'Find, Track, Analyse and Stay healthy',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * .90,
                    height: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(blurRadius: 25, color: Colors.black54)
                        ]),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Text("Your Body",
                                style: TextStyle(
                                  color: Colors.purple[300],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 150,
                                color: Colors.grey[200],
                                height: 150,
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("178cm\nHeight",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              SizedBox(height: 30),
                              Text("43%\nWater",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ],
                          ),
                          const SizedBox(width: 25),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("70kg\nWeight",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              SizedBox(height: 30),
                              Text("7hr 30min\nSleep",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(width: size.width * .05),
                  Container(
                    width: 190,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(blurRadius: 25, color: Colors.blue.shade300)
                        ]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            RadialChart(),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                const Icon(Icons.circle,
                                    color: Colors.green, size: 15),
                                SizedBox(width: 3),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Sleep\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '7h 30min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(Icons.circle,
                                    color: Colors.orange, size: 15),
                                SizedBox(width: 3),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Exercise\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '7h 30min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.circle,
                                    color: Colors.blue, size: 15),
                                SizedBox(width: 3),
                                RichText(
                                  text: const TextSpan(
                                    text: 'Water\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '1.5L',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    width: 135,
                    height: 125,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(blurRadius: 25, color: Colors.blue.shade300)
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 10,
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Heart rate",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 120,
                                height: 70,
                                child: SplineGraph(color: Colors.red)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: size.width * .05),
                  ProgressBar(
                      heading: "Hydration",
                      imagename: "assets/images/drink 2.png",
                      progress: .85),
                  SizedBox(width: size.width * .08),
                  ProgressBar(
                      heading: "Nutrition",
                      imagename: "assets/images/nutrition 2.png",
                      progress: .55),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: size.width * .05),
                  ProgressBar(
                      heading: "Exercise",
                      imagename: "assets/images/slumber 3.png",
                      progress: .25),
                  SizedBox(width: size.width * .08),
                  ProgressBar(
                      heading: "Sleep",
                      imagename: "assets/images/slumber 3.png",
                      progress: .55),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: size.width * .05),
                  SplineWidget(
                      heading: "Activeness",
                      imagename: "assets/images/yoga-position 4.png",
                      color1: Colors.blue),
                  SizedBox(width: size.width * .08),
                  SplineWidget(
                      heading: "Stress level",
                      imagename: "assets/images/slumber 4.png",
                      color1: Colors.green),
                ],
              ),
              // SizedBox(
              //   width: 300,
              //   height: 190,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 5,
              //       itemBuilder: (BuildContext context, int index) {
              //         return ListTile(
              //             leading: const Icon(Icons.list),
              //             trailing: const Text(
              //               "GFG",
              //               style: TextStyle(color: Colors.green, fontSize: 15),
              //             ),
              //             title: Text("List item $index"));
              //       }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
// LinearPercentIndicator(
//   width: 190,
//   animation: true,
//   animationDuration: 1000,
//   lineHeight: 30,
//   center: Text(
//     "60.0%",
//     style: new TextStyle(fontSize: 15.0, color: Colors.white),
//   ),
//   percent: 0.6,
//   barRadius: Radius.circular(30),
//   progressColor: Color.fromARGB(255, 32, 165, 236),
//   backgroundColor: Color.fromARGB(255, 32, 200, 230),
// ),
