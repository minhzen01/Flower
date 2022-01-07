import 'package:flutter/material.dart';
import 'package:flower/image_detail.dart';

class Widget2 extends StatelessWidget {
  final String? linkPic;
  const Widget2({Key? key,
  required this.linkPic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ImageDetail(linkPic: '$linkPic')));
        },
        child: Hero(
          tag: '$linkPic',
          child: Image.asset(
            '$linkPic',
            height: 170,
          ),
        ),
      ),

    );
  }
}
