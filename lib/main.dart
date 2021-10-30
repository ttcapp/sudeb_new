import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

double conHeight=120;
double conWidth=120;

var imgsrcb="https://thumbs.dreamstime.com/z/tiger-portrait-horizontal-11392212.jpg";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My First App"),
      ),
      body: Center(
        child: Container(
          //height: height/2,
          //width: width/2,
          color: Colors.greenAccent,
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      conHeight=300;
                      conWidth=300;
                    });
                  },
                  onDoubleTap: (){
                    setState(() {
                      conHeight=400;
                      conWidth=400;
                    });
                  },
                  child: AnimatedContainer(
                    height: conHeight,
                    width: conWidth,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/z/tiger-portrait-horizontal-11392212.jpg",
                        ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(180),
                        border: Border.all(color: Colors.pink,width: 5)
                    ), duration: Duration(microseconds: 4000),
                  ),
                ),

                Text("Child Photo",style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,
                    color: Colors.purple
                ),),
                Image.asset("assets/image/image1.jpg"),
                Image.asset("assets/image/image2.jpg"),
                Image.asset("assets/image/image3.jpg"),
                Image.asset("assets/image/image4.jpg"),
                Image.asset("assets/image/image5.jpg"),
                //Image.network(imgsrcb),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
