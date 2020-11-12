import 'package:flutter/material.dart';
//import 'package:gradient_app_bar/gradient_app_bar.dart';
class SecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.red, Colors.blueAccent])),

      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset("images/image1.png"),
              ),
              Text("toufu's Songs",style: TextStyle(
                color: Colors.white,
              ),
              ),
              Icon(Icons.add),
            ],
          ),


        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("My Music",style: TextStyle(
                          color: Colors.white38.withOpacity(0.5),
                        ),),
                        Text("Shared",style: TextStyle(
                          color: Colors.white38.withOpacity(0.5),
                        ),),
                        Text("Feed",style: TextStyle(
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              //////// card 2
              CusteCard(singerName: "Trapadelic lobo ",des: "lilobobeats",netImage: "images/image1.png",numPlay: "4",),
              ///////////// card 3
              CusteCard(singerName: "Different ",des: "younglowkey",netImage: "images/image2.png",numPlay: "23",),
              ////card 3
              CusteCard(singerName: "Future ",des: "younglowkey",netImage: "images/image3.png",numPlay: "2",),
              //card 4
              CusteCard(singerName: "ASAP",des: "theaproducer_808",netImage: "images/image4.png",numPlay: "13",),
              //card 5
              CusteCard(singerName: "🌲 🌲 🌲",des: "Traphousepeyton",netImage: "images/image1.png",numPlay: "  ",),
              //card 6
              CusteCard(singerName: "something sweet... ",des: "6ryan",netImage: "images/image1.png",numPlay: "  ",),
              //card 7
              CusteCard(singerName: "Sharpie 🖋 ",des: "Fergie_6",netImage: "images/image1.png",numPlay: "  ",),
              //card 8
              CusteCard(singerName: "mohamed said ",des: "pop re",netImage: "images/image1.png",numPlay: "  ",),
              //card 9
              CusteCard(singerName: "mohamed said ",des: "pop re",netImage: "images/image1.png",numPlay: "  ",),


            ],
          ),
        ),
      ),

    );
  }
}

class CusteCard extends StatelessWidget {
  CusteCard({this.singerName,this.des,this.netImage,this.numPlay});
  final String singerName;
  final String des;
  final String netImage;
  final String numPlay;
  //final String desName,
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white70.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset("$netImage"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$singerName",style: TextStyle(color: Colors.white,fontSize: 20),),
                    Text("$des",style: TextStyle(color: Colors.white38,fontSize: 15),),
                  ],
                ),
              ),
              Expanded(
                child: Icon(Icons.play_arrow_outlined,color: Colors.white,
                  size: 30,),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.local_fire_department,color: Colors.white,size: 30),
                    Text("$numPlay",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

