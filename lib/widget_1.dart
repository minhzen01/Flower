import 'package:flower/image_detail.dart';
import 'package:flutter/material.dart';

class Widget_1 extends StatelessWidget {
  final String? linkPic;
  final String? namePic;
  final String? location;
  final String? price;

  const Widget_1(
      {Key? key,
        required this.linkPic,
        required this.namePic,
        required this.location,
        required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(left: 30),
            // width: 200,
            // color: Colors.black,
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ImageDetail(linkPic: linkPic, detail: namePic)));
                  },
                  child: Container(
                    child: Hero(
                      tag: '$linkPic',
                      child: Image.asset(
                        '$linkPic',
                        height: 210,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("$namePic"),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Text("$location", style: TextStyle(color: Color(0xFF009b65)),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text('\$$price', style: TextStyle(color: Color(0xFF009b65), fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
