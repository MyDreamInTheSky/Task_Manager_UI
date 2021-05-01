import 'package:flutter/material.dart';
import '../screen/secondScreen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskManager(),
    );
  }
}

class TaskManager extends StatefulWidget{
  @override
  TaskManagerState createState() => TaskManagerState();
}

class TaskManagerState extends State<TaskManager>{
  var date = ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height : MediaQuery.of(context).size.height/14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.only(topLeft: Radius.circular(10)) ,),
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          child: Center(
                            child: Icon(Icons.home, color: Colors.white,),
                          ),
                          onPressed: (){
                            final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white, border: Border.symmetric(vertical: BorderSide(width: 0.5, color: Colors.white))),
                        width: MediaQuery.of(context).size.width/3,
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Icon(Icons.search, color: Colors.grey,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular((10))) ),
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Icon(Icons.notifications, color: Colors.grey,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),//Bottom AppBar
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/2.5,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Icon(Icons.calendar_today, color: Colors.white,),
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Icon(Icons.event_available, color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32,),
                    Text("Hello Andy", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    Text("You have 5 task today", style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
            ),//Top AppBar
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height/3 - 6,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      width: 64,
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(date[index%7]),
                            Text((index%30+1).toString(), style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            ),),
                          ],
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                        },
                      )
                    );
                  },
                ),
                height: 100,
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: MediaQuery.of(context).size.height/2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 240,
                decoration: BoxDecoration(color: Colors.purple[50], borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Task",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        Text(
                          "April 2020",
                          style: TextStyle( fontSize: 16, color: Colors.grey,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index){
                          return Container(
                            height: 100,
                            margin: EdgeInsets.only(top: 8, bottom: 8),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(239, 239, 235, 1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/check.png"),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Padding(
                                    child: Column(
                                      children: [
                                        Text("Guest Event", style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Home"),

                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    ),
                                    padding: EdgeInsets.all(8),
                                  ),
                                  flex: 2,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}






















