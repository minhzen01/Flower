import 'package:flutter/material.dart';

class ImageDetail extends StatefulWidget {
  final linkPic;
  final detail;

  const ImageDetail({Key? key,
  required this.linkPic,
    this.detail}) : super(key: key);

  @override
  _ImageDetailState createState() => _ImageDetailState();
}

class _ImageDetailState extends State<ImageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Hero(
                  tag: widget.linkPic,
                  child: Container(
                    child: Image.asset(
                      '${widget.linkPic}',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(widget.detail != null ? "${widget.detail}" : " ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xFF009b65)),)
              // child: Text("${widget.detail}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}
