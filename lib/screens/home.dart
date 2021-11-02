import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mod3_kel08/screens/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/list.png'),
                    ),
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.asset('assets/images/dots.png'),
                    )
                  ]),
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    'Luxury, Style and Comfort',
                    style: GoogleFonts.roboto(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    'Get customized furniture for your choice online at your one click',
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailPage()),
                        );
                      },
                      child: Container(
                        height: 75,
                        width: 75,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: const Color(0xff2A2927),

                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(icons[index].img))),
                      ));
                },
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                'Popular themes',
                style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            StaggeredGridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 25,
                crossAxisSpacing: 25,
                // ignore: prefer_const_literals_to_create_immutables
                staggeredTiles: [
                  const StaggeredTile.count(1, 2),
                  const StaggeredTile.count(1, 1),
                  const StaggeredTile.count(1, 2),
                  const StaggeredTile.count(1, 1)
                ],
                children: <Widget>[
                  imageList("assets/images/plant.jpg"),
                  imageList("assets/images/lamp.jpg"),
                  imageList("assets/images/decor.jpg"),
                  imageList("assets/images/room.jpg"),
                ])
          ],
        ),
      ),
    );
  }
}

class IconModel {
  String img;

  IconModel(this.img);
}

List<IconModel> icons = iconData
    .map(
      (item) => IconModel(item['img']!),
    )
    .toList();

var iconData = [
  {"img": "assets/images/sofa.png"},
  {"img": "assets/images/chair.png"},
  {"img": "assets/images/bed.png"},
  {"img": "assets/images/lamp.png"},
];

Widget imageList(String myImage) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(myImage))));
}
