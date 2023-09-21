import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

// ignore: must_be_immutable
class ProgressBar extends StatelessWidget {
  var heading, imagename, progress;
  ProgressBar(
      {super.key,
      required this.heading,
      required this.imagename,
      required this.progress});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: Colors.white),
            boxShadow: [BoxShadow(blurRadius: 25, color: Colors.grey.shade500)]),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 15),
                Text(
                  heading,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                const SizedBox(width: 15),
                Image.asset(
                  imagename,
                  height: 30,
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SimpleAnimationProgressBar(
              height: 25,
              width: 120,
              backgroundColor: Colors.black,
              foregrondColor: Colors.blue,
              ratio: progress,
              direction: Axis.horizontal,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(seconds: 3),
              borderRadius: BorderRadius.circular(15),
            )),
          ],
        ));
  }
}
