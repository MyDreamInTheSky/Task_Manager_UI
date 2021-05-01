
import 'dart:ui';
import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget{
  @override
  SecondScreenState createState() => SecondScreenState();

}

class SecondScreenState extends State<SecondScreen>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                    Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                                      child: FlatButton(
                                        child: Icon(
                                          Icons.home,
                                          color: Colors.white,
                                        ),
                                        onPressed: (){
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                ],
                              )
                          ),
                    ) ,
                Container(
                  height: MediaQuery.of(context).size.height/8*6,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Work", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),)
                              ],
                            ),
                        ),
                      Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              return Container(
                                width: 180,
                                margin: EdgeInsets.only(right: 15, top: 10, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage('assets/home.png'),
                                            ),
                                          color: Colors.black12,
                                          )
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Online Meeting", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                          Text("Apr 14, 2020", style: TextStyle(color: Colors.grey[800]),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Members",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/ball.png')
                                        ),
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 50,
                                      height: 50,
                                      margin: EdgeInsets.only(left: 5),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/ball.png')
                                        ),
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 50,
                                      height: 50,
                                      margin: EdgeInsets.only(left: 5),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/ball.png')
                                        ),
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 50,
                                      height: 50,
                                      margin: EdgeInsets.only(left: 5),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/ball.png')
                                        ),
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 50,
                                      height: 50,
                                      margin: EdgeInsets.only(left: 5),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                                            image: AssetImage('assets/ball.png')
                                        ),
                                      ),
                                      child: Center(
                                        child: Text("+9", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                                      ),
                                      width: 50,
                                      height: 50,
                                      margin: EdgeInsets.only(left: 5),
                                    ),
                                  ],

                                ),
                              )
                            ],
                          ),
                        ),
                      Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 15),
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                              Text("Một đoạn text mẫu bỏ vào đây xem nó như thế nào, thì ra nó như thế này, đang bị overflow :v cay vãi", style: TextStyle(fontSize: 24),),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: FlatButton(
                      child: Text(
                        "Add work",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


