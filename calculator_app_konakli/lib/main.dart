import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator>{

  Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
  return Container(
  child: SizedBox(
    width: 80,
    height: 80,
    child: ElevatedButton(
      onPressed: (){
        //fonksiyon buton.
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10.0),
        shape: CircleBorder(),
        backgroundColor: btncolor,
      ),
      child: Text(btntxt,
        style: TextStyle(
          fontSize: 35,
          color: txtcolor,
        ),
        ),
    ),
  ),
  );
  }
  Widget btnBackSpace(Color btncolor,Color txtcolor){
    return Container(
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: (){
            //fonksiyon buton.
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(right: 5.0),
            shape: CircleBorder(),
            backgroundColor: btncolor,
          ),
          child: Icon(Icons.backspace,
            size: 35,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator'),backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10.0),
                child: Text('0',
                textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 100),
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Buton Fonksiyonlari Buraya cagirilacak.
                calcbutton('AC', Colors.grey, Colors.black),
                btnBackSpace(Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Buton Fonksiyonlari Buraya cagirilacak.
                calcbutton('7', Colors.grey.shade800, Colors.white),
                calcbutton('8', Colors.grey.shade800, Colors.white),
                calcbutton('9', Colors.grey.shade800, Colors.white),
                calcbutton('x', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Buton Fonksiyonlari Buraya cagirilacak.
                calcbutton('4', Colors.grey.shade800, Colors.white),
                calcbutton('5', Colors.grey.shade800, Colors.white),
                calcbutton('6', Colors.grey.shade800, Colors.white),
                calcbutton('-', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Buton Fonksiyonlari Buraya cagirilacak.
                calcbutton('1', Colors.grey.shade800, Colors.white),
                calcbutton('2', Colors.grey.shade800, Colors.white),
                calcbutton('3', Colors.grey.shade800, Colors.white),
                calcbutton('+', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 170,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: (){
                      //fonksiyon buton.
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(right: 80),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.grey.shade800,
                    ),
                    child: Text("0",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                calcbutton('.', Colors.grey.shade800, Colors.white),
                calcbutton('=', Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
