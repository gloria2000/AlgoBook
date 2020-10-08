import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:algobook/pages/BottomNavigationBarWidget.dart';
import 'package:algobook/pages/Algorithm.dart';
import 'package:algobook/pages/DataStructures.dart';


class MyHomePage extends StatefulWidget  {


  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  customTile(var _title, var _index)=>GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> AlgoExist(num: _index,)),);
    },
    child: Container(
      margin: EdgeInsets.only(top:3,bottom:3),
      padding: EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Color(0xFF24A19C))
          )
      ),
      child: Text('$_title',
        style: TextStyle(
            fontSize: 20,
            color: Color(0xFF24A19C)
        ),),
    ),
  );


  @override
  Widget build(BuildContext context) {

    Store A = new Store();
    TextEditingController _controller = new TextEditingController();
    void find(var n){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> AlgoExist(num: A.searchResult(_controller.text  ))),);

    }

    return Scaffold(


        body:Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [ Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(50), bottomLeft:Radius.circular(50) ),
                      color: Color(0xFF24A19C)
                  ),
                  height: MediaQuery.of(context).size.height*0.3,
                  width: double.infinity,
                  child: Center(
                    child: Text("A L G O R I T H M S \n H A N D B O O K { }",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                      ),
                      textAlign: TextAlign.center,),
                  ),
                ),

                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width-60,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white..withOpacity(0.5),
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              offset: Offset(3, 3),
                              blurRadius: 5
                          )]

                      ),

                      child:TextFormField(
                        controller: _controller,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide.none,

                          ),
                          hintText: ' Search',
                          suffixIcon: GestureDetector(
                            onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> AlgoExist(num: A.searchResult(_controller.text  ))),);
                            },
                            child: Icon(Icons.search,
                              color: Color(0xFF24A19C).withOpacity(0.8),),
                          ),
                          hintStyle: new TextStyle(color: Color(0xFF24A19C).withOpacity(0.7),
                              fontSize: 20),
                        ),
                        onFieldSubmitted: (term){
                          find(_controller.text);
                        },
                      )
                  ),
                  Column(
                    children: [

                     
                      SizedBox(height: 20,),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      height: MediaQuery.of(context).size.height*0.8-150,
                      child: SingleChildScrollView(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('SEARCHING',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                              ),),
                            customTile("Linear Search", 14),
                            customTile("Binary Search", 15),
                            SizedBox(height: 20,),
                            Text('SORTING',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold
                            ),),
                           customTile("Bubble Sort",0),
                           customTile("Selection Sort", 1),
                            customTile("Merge Sort", 2),
                            customTile("Shell Sort", 3),
                            customTile("Quick Sort", 4),
                            customTile("Heap Sort", 5),
                            customTile("Counting Sort", 16),
                            customTile("Radix Sort", 17),
                            customTile("Bucket Sort", 18),
                            customTile("KMP Algorithm", 30),

                            SizedBox(height: 20,),
                            Text('GRAPHS',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                              ),),
                            customTile("DFS Algorithm",8),
                            customTile("BFS Algorithm", 9),
                            customTile("Bellman Ford's Algorithm", 10),
                            customTile("Flloyd - Warshall's", 11),
                            customTile("Dijkstra's Algorithm", 19),
                            customTile("Topological Sort", 20),
                            customTile("Johnson's Algorithm", 21),
                            customTile("Bridges in a graph", 22),

                            SizedBox(height: 20,),
                            Text('GREEDY ALGORITHMS',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                              ),),
                            customTile("Prim's Algorithm", 6),
                            customTile("Kruskal's Algorithm", 7),
                            SizedBox(height: 20,),
                            Text('DYNAMIC PROGRAMMING',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                              ),),
                            customTile("Longest Common subsequence", 12),
                            customTile("Longest Increasing subsequence", 23),
                            customTile("Knapsack Problem",24),
                            customTile("Minimum partition algorithm", 25),
                            customTile("Longest path in a matrix", 26),
                            SizedBox(height: 20,),
                            Text('BIT MANIPULATIONS',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                              ),),
                            customTile("Bit Representation of a number", 32),
                            customTile("Set representation", 33),
                            SizedBox(height: 20,),
                            Text('OTHER ALGORITHMS',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                              ),),
                          customTile("Rabin-Karp's Algorithm", 13),
                            customTile("Sieve of Eratosthenes", 27),
                            customTile("Fermat's Primality test", 29),
                            customTile("Monto-Carlo Algorithm", 28),
                            customTile("Maximum Subarray Sum", 31),
                            customTile("Generating subsets", 34),
                            customTile("Generating permutations", 35)
                          ],
                        ),
                      ),
                    ),
                  )
                    ],
                  ),
                ],
              ),
            )
        ),

    );
  }
}
