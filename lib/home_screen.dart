import 'package:flower/widget_1.dart';
import 'package:flower/widget_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            //TODO
            /* Write listener code here */
          },
          child: SvgPicture.asset(
            "icons/menu.svg",
            fit: BoxFit.scaleDown
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: const Color(0xFF009b65),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 25),
                          alignment: Alignment.topRight,
                          child: const Text("Hi Uishopy!", style: TextStyle(backgroundColor: Color(0xFF009b65), color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 190, bottom: 40),
                          child: Image.asset(
                            'images/logo.png',
                            width: 60,
                            height: 60,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 75),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: SvgPicture.asset(
                          'icons/search.svg',
                          height: 5,
                          width: 5,
                          fit: BoxFit.scaleDown
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Color(0xFF009b65)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      )
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 40),
                  child: const Text("Recommend", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 150, top: 40),
                  child: SizedBox(
                    height: 38,
                    width: 80,
                    child: TextButton(
                      child: const Text("More", style: TextStyle(color: Colors.white),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF009b65)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                // side: BorderSide(color: Colors.grey)
                              )
                          )
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  Widget1(linkPic: 'images/image_1.png', namePic: 'SAMANTHA', location: 'RUSSIA', price: '440'),
                  Widget1(linkPic: 'images/image_2.png', namePic: 'ANGELICA', location: 'RUSSIA', price: '440'),
                  Widget1(linkPic: 'images/image_3.png', namePic: 'SAMANTHA', location: 'RUSSIA', price: '440'),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 40),
                  child: const Text("Featured Plants", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 115, top: 40),
                  child: SizedBox(
                    height: 38,
                    width: 80,
                    child: TextButton(
                      child: const Text("More", style: TextStyle(color: Colors.white),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF009b65)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                // side: BorderSide(color: Colors.grey)
                              )
                          )
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  Widget2(linkPic: 'images/bottom_img_1.png'),
                  Widget2(linkPic: 'images/bottom_img_2.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
