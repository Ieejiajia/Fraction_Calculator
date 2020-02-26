import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _acontroller = TextEditingController();
  final TextEditingController _bcontroller = TextEditingController();
  final TextEditingController _ccontroller = TextEditingController();
  final TextEditingController _dcontroller = TextEditingController();
  int a = 0,b = 0, c = 0, d = 0, resultA = 0,resultB = 0;
  var operation = ['+','-','x','/'];
  var _currentOperation = '+';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text('Fraction_calculaor',
            style: new TextStyle(fontSize:30.0,
            color: const Color(0xFFec7e9a),
            fontWeight: FontWeight.w500,
            fontFamily: "Merriweather"),),
            
            
          ),


          body: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    
                      Expanded(
                      child:TextField(
                      decoration: InputDecoration(
                      filled: true,
                      fillColor:Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),

                      ),
                      
                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                      controller: _acontroller,
                      ),),
                    Padding(padding: EdgeInsets.fromLTRB(10, 20, 90, 0),),
                  
                    Expanded(
                      child:TextField(
                      decoration: InputDecoration(filled: true,
                      fillColor:Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),

                      ),

                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                      controller: _ccontroller,
                      ),),
                  Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    ),

                     Container(
                      
                       width:90,
                       height:50,
                       child: Text("$resultA"),
                     ),
                  
                    
                  
              ],
              
              ),
              Row(
                
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Image.asset('assets/images/straight line.png',width: 200, height: 200,),
                  
                  Text("_____________"),
                  Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 0)),
                  

                  Container(
                    color: Colors.white70,
                    height: 40,
                    width: 50,
                    child: DropdownButton<String>(
                      
                    items: operation.map((String dropDownStringItem)
                  
                    {
                      return DropdownMenuItem<String>(
                        
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem,
                        style: new TextStyle(fontSize:20.0,
                        color: const Color(0xFFec7e9a),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Merriweather",

                     ),
            
                    ),
                      );
                    }
                    ).toList(),
                    onChanged: (String newValueSelected){
                      _onDropDownItemSelected(newValueSelected);
                         },
                      value: _currentOperation,
                              
                        ),
                  ),
                                    
                            Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 0)),
                            Text("_____________"),
                            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),                
                            Text('=',
                            style: new TextStyle(fontSize:30.0,
                            color: const Color(0xFFec7e9a),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Merriweather"),
                            ),
                            Text("   _____________")],
                             ),
                                                
                          Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: <Widget>[
                    
                                Expanded(child:TextField(
                                          decoration: InputDecoration(
                                                filled: true,
                                                fillColor:Colors.white70,
                                                border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(25.0),
                                           ),
                                        ),
                                        keyboardType: TextInputType.numberWithOptions(),
                                          controller: _bcontroller,
                                          ),),
                                                  Padding(padding: EdgeInsets.fromLTRB(10, 20, 90, 0),
                                                  ),
                                
                                                  Expanded(child:TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor:Colors.white70,
                                             border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(25.0),
                                           ),
                                        ),
                                        keyboardType: TextInputType.numberWithOptions(),
                                          controller: _dcontroller,
                                          ),),
                                                  Padding(padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                                                  ),
                                          Container(
                                           width:100,
                                           height:50,
                                           child: Text("$resultB"),
                                         ),
                                            
                                                 ],
                                             ),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                               crossAxisAlignment: CrossAxisAlignment.end,
                                               children: <Widget>[
                                                 SizedBox(
                                                   width: 0,
                                                   height: 80,
                                                 ),
                                                Padding(padding: EdgeInsets.all(5),
                                                child: RaisedButton(
                                                  color: Colors.indigo,
                                                  child: Text("Calculate",
                                                  style: new TextStyle(fontSize:20.0,
                                                  color: const Color(0xFFec7e9a),
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Merriweather"),),
                                                  onPressed: _onPress,
                                                 ),
                                                 ),
                                                Padding(padding: EdgeInsets.all(5),
                                                  child: RaisedButton(
                                                    color: Colors.indigo,
                                                    child: Text("clear",
                                                    style: new TextStyle(fontSize:20.0,
                                                    color: const Color(0xFFec7e9a),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Merriweather"),),
                                                    onPressed: _onPress2),
                                                    ),
                                               ],
                                               ),
                                              ],
                                             ), 
                                            )
                                           );
                                           }                            
                               void _onPress() {
                                 setState(() {
                                  a = int.parse(_acontroller.text);
                                  b = int.parse(_bcontroller.text);
                                  c = int.parse(_ccontroller.text);
                                  d = int.parse(_dcontroller.text);
                                  if(_currentOperation =='+'){
                                   resultA = (a*d)+(b*c);
                                   resultB = b*d;
                                  }
                                  else if (_currentOperation == '-'){
                                    resultA = (a*d)-(b*c);
                                    resultB = b*d;
                                  }
                                  else if(_currentOperation == 'x'){
                                    resultA = a*c;
                                    resultB = b*d;
                                  }
                                  else if(_currentOperation == '/'){
                                    resultA = a*d;
                                    resultB = b*c;
                                  }
                                for(int i = 2; i<= 100000; i++){
                                  while(resultA % i == 0 && resultB % i==0){
                                    resultA=(resultA /i).round();
                                    resultB=(resultB /i).round();
                                 }
                               }          
                                  });
                                  }
                                  void _onPress2() {
                                   setState(() {
                                   _acontroller.text = "";
                                   _bcontroller.text = "";
                                   _ccontroller.text = "";
                                   _dcontroller.text = "";
                                  resultA = 0;
                                  resultB = 0;
                                  });
                      }
                      void _onDropDownItemSelected(String newValueSelected) {
                        setState(() {
                          this._currentOperation = newValueSelected;
                        });
                      }
}
