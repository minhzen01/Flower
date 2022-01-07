import 'package:flower/image_detail.dart';
import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  final String? linkPic;
  final String? namePic;
  final String? location;
  final String? price;

  const Widget1(
      {Key? key,
        required this.linkPic,
        required this.namePic,
        required this.location,
        required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 250,
      child: Stack(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ImageDetail(linkPic: '$linkPic', detail: namePic)));
            },
            child: Hero(
              tag: '$linkPic',
              child: Image.asset(
                '$linkPic',
                height: 210,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            top: 208.0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
              ),
              child: Container(
                width: 178,
                height: 40,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: Text("$namePic"),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text("$location", style: const TextStyle(color: Color(0xFF009b65)),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 45),
                      child: Text('\$$price', style: const TextStyle(color: Color(0xFF009b65), fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
