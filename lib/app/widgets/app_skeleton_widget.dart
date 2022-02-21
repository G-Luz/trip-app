import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class AppSkeletonWidget extends StatelessWidget {
  final bool isTreeSkeleton;

  const AppSkeletonWidget({this.isTreeSkeleton = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          // padding: const EdgeInsets.all(4.0),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: SkeletonAnimation(
                  shimmerColor: Colors.grey,
                  shimmerDuration: 2000,
                  curve: Curves.easeInQuad,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // margin: EdgeInsets.only(top: 40),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
