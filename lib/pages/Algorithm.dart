import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:algobook/pages/DataStructures.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';


class AlgoExist extends StatefulWidget {

  final int num;
  AlgoExist({Key key, @required this.num }) : super(key: key);

  @override
  _AlgoExistState createState() => _AlgoExistState(this.num);
}

class _AlgoExistState extends State<AlgoExist> {
  final int num;
  String code;
  _AlgoExistState(this.num);
  Store a = new Store();

  fetchAlgoFromFile(String path) async{
    String algorithm;
    algorithm = await rootBundle.loadString(path);

    setState(() {
      code = algorithm;
    });
  }
  @override
  void initState() {
    super.initState();
    
    fetchAlgoFromFile(a.code[num]);
    WidgetsBinding.instance.addPostFrameCallback((_) => start(context));
  }
  void start(BuildContext){asyncFunc(BuildContext);}
  asyncFunc(BuildContext) async {
    if (num < 0) {
      Navigator.pushReplacement(
        BuildContext,
        MaterialPageRoute(builder: (context) => AlgoPage(myIndex: num,)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var defColor = Color(0xFF24A19C);

    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(''),
        backgroundColor: defColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
              children: [ Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(50), bottomLeft:Radius.circular(50) ),
                    color: Color(0xFF24A19C)
                ),
                height: MediaQuery.of(context).size.height*0.2,
                width: double.infinity,
                child: Text(a.diction[num],
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                  textAlign: TextAlign.center,),
              ),
                SizedBox(height: 5,),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Wrap(
                          children:[
                            Container(
                                padding:EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Text("TIME COMPLEXITY",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10
                                      ),),
                                    Wrap(
                                      children: [
                                        Text('${a.dsUsed[num]}'),
                                      ],
                                    ),
                                  ],
                                )),
                            SizedBox(height: 20,),
                            Container(
                              decoration: BoxDecoration(
                                  color: defColor.withOpacity(0.3),
                                  borderRadius: BorderRadius.all(Radius.circular(30))
                              ),
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text(code,
                                      style: TextStyle(
                                          fontSize: 15  ,
                                          fontFamily: 'SourceCodePro'
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}


class AlgoPage extends StatefulWidget {

  final  int myIndex;
  AlgoPage({Key key, @required this.myIndex }) : super(key: key);

  @override
  _AlgoPageState createState() => _AlgoPageState(this.myIndex);
}

class _AlgoPageState extends State<AlgoPage> {

  final int myIndex;
  _AlgoPageState(this.myIndex);



  @override
  Widget build(BuildContext context) {
    var defColor=Color(0xFF24A19C);
    bool pressed = false;

    return  Scaffold(
      appBar: AppBar(
          backgroundColor: defColor,
          elevation: 0,
          title: Text('Oops!',
          )
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text('Algorithm not found!',
                style: TextStyle(
                  color: defColor,
                  fontSize: 20,
                ),),
              SizedBox(height: 20,),
              Image.asset('assets/noAlgo.jpg'),
              Text('Help us add this algorithm\n by giving feedback!',

                style: TextStyle(
                    color: defColor,
                    fontFamily: 'SourceCodePro',
                    fontSize: 15
                ),),
           SizedBox(height: 20,),
           InkWell(
              child: new Text('Go to Feedback',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: defColor,
                  fontSize: 20,
                ),),
              onTap: () => launch('https://play.google.com/store/apps')
          ),
              SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}