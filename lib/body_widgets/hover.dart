import 'package:flutter/material.dart';
import '../data/screen_images_data.dart';

class HoverTrue extends StatelessWidget {
  final int index;
  HoverTrue(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5),
            child: Stack(
              children: <Widget>[
                Container(
                  //margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesData[index].address),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Positioned(
                    top: 20,
                    right: 15,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
                Positioned(
                  bottom: 20,
                  left: 16,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.grey[700],
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 60,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.purple[700],
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[700],
                        maxRadius: 20,
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            ),
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
