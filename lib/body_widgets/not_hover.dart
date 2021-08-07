import 'package:flutter/material.dart';
import '../data/screen_images_data.dart';

class HoverFalse extends StatelessWidget {
  final int index;
  HoverFalse(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagesData[index].address),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 6,
            ),
            CircleAvatar(
              maxRadius: 12,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("assets/images/vp.jpeg"),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Clicked by Vrushaket")
          ],
        )
      ],
    );
  }
}
