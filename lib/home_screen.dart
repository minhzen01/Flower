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
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      color: Color(0xFF009b65),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 25),
                            alignment: Alignment.topRight,
                            child: Text("Hi Uishopy!", style: TextStyle(backgroundColor: Color(0xFF009b65), color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 190, bottom: 40),
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
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 75),
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
                      hintStyle: TextStyle(color: Color(0xFF009b65)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      )
                      // enabledBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      //   borderSide: BorderSide(
                      //     color: Colors.grey,
                      //   ),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      //   borderSide: BorderSide(color: Color(0xFF009b65)),
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 50),
                    child: Text("Recommend", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 150, top: 50),
                    child: SizedBox(
                      height: 38,
                      width: 80,
                      child: TextButton(
                        child: Text("More", style: TextStyle(color: Colors.white),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF009b65)),
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
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 30),
                    // width: 200,
                    // color: Colors.black,
                    child: Column(
                      children: [
                        Image.asset(
                          'images/image_1.png',
                          width: 200,
                          height: 200,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 45, top: 10),
                                      child: Text("SAMANTHA"),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 75),
                                      child: Text("RUSSIA", style: TextStyle(color: Color(0xFF009b65)),),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text('440', style: TextStyle(color: Color(0xFF009b65), fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
