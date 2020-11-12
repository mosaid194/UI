import 'package:flutter/material.dart';
import 'second_page.dart';
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subscription",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FlatButton(
                            child: CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,

                              ),
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecPage()),
                              );
                            },
                          ),
                        ],
                      ),

                      CartonCards(
                        image: "images/WeBare.png",
                        cartoonName: "Bare Bears",
                        episodeNum: "68 Episode",
                        sub: "Subscribed",
                      ),

                      /////new Row

                      CartonCards(
                        image: "images/TheSimp.png",
                        cartoonName: "The Simpsons",
                        episodeNum: "639 Episode",
                        sub: "Subscribed",
                      ),

                      ////new Row

                      CartonCards(
                        image: "images/JB.png",
                        cartoonName: "Johny Bravo",
                        episodeNum: "102 Episode",
                        sub: "Subscribed",
                      ),

                      // new Row
                      CartonCards(
                        image: "images/Ben10.png",
                        cartoonName: "Ben 10",
                        episodeNum: "285 Episode",
                        sub: "Expired",
                      ),
                      // new Row
                      //SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.apps_outlined,size: 30,),
                            Icon(Icons.search,size: 30),
                            Icon(Icons.snippet_folder,size: 30),

                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartonCards extends StatelessWidget {
  CartonCards({this.image, this.cartoonName, this.episodeNum, this.sub});

  final String image;
  final String cartoonName;
  final String episodeNum;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 90,
            height: 90,
            //color: Colors.amber,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: Colors.white38,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage("$image"),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "$sub",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  color: Colors.deepPurple,
                ),
                Text(
                  "$cartoonName",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.video_collection_outlined,
                      size: 13,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "$episodeNum",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
