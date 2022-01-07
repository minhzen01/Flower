import 'package:flutter/material.dart';

class ImageDetail extends StatefulWidget {
  final String linkPic;
  final String? detail;

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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Hero(
                  tag: widget.linkPic,
                  child: Image.asset(
                    widget.linkPic,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Text(widget.detail != null ? "${widget.detail}" : " ", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xFF009b65)),)
              // child: Text("${widget.detail}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}
