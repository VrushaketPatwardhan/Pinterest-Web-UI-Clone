// Vrushaket Patwardhan - BT19ECE034
// Web App link : https://vrushaket034-pinterest.web.app/#/

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import './appbar_widgets/leading.dart';
import './appbar_widgets/title.dart';
import './body_widgets/hover.dart';
import './body_widgets/not_hover.dart';
import './data/screen_images_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vrushaket Patwardhan -Pinterest',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Leading(),
        title: TitleAp(),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              hoverColor: Colors.green[100],
              onTap: () => null,
              onHover: (hovering) {},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.green,
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              hoverColor: Colors.red[100],
              onTap: () => null,
              onHover: (hovering) {},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.message,
                  color: Colors.red[800],
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              hoverColor: Colors.purple[50],
              onTap: () => null,
              onHover: (hovering) {},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.purple[600],
                  size: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              hoverColor: Colors.purple[50],
              onTap: () => null,
              onHover: (hovering) {},
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.purple[600],
                  size: 30,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      ///////////////////////////////////** BODY **/////////////////////////////////////////////////////////////////
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 0, right: 10, left: 10),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: MediaQuery.of(context).size.width < 1000 ? 4 : 6,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: ImagesData.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {},
                  hoverColor: Colors.white,
                  onHover: (hovering) {
                    setState(() {
                      ImagesData[index].hoverstatus = hovering;
                    });
                  },
                  child: (ImagesData[index].hoverstatus == true)
                      ? HoverTrue(index)
                      : HoverFalse(index));
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
