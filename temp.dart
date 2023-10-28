import 'package:flutter/material.dart';

class Tempcon extends StatefulWidget{
  const Tempcon({super.key});
  @override
  State<Tempcon> createState() =>
    _Temp();
  
}

class _Temp extends State<Tempcon>{
  double x=0;
  TextEditingController textedit =TextEditingController();
  @override
  Widget build(BuildContext context){
    const bor=OutlineInputBorder(
      borderSide: BorderSide(
      width: 3,
        style: BorderStyle.solid,color: Colors.black
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );


    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 173, 235),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 5, 139),
        title: const Center(child:Text('FAHRENHIET CONVERTOR')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${x.toStringAsFixed(2)} F',
              style: const TextStyle(
                fontSize:50,
                fontStyle: FontStyle.italic,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                controller: textedit,
                style:const TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),
                decoration: const InputDecoration(
                  hintText: "enter the temperature",
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.thermostat,color:Color.fromARGB(255, 245, 77, 65),),
                  suffix: Text('Celsius',style:TextStyle(color: Colors.black,fontSize: 20),),
                  focusedBorder:bor,
                  enabledBorder:bor,
                ),
                keyboardType: TextInputType.datetime,
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed:(){
                  setState(() {
                    x=double.parse(textedit.text)*(9/5)+32;
                  });
                },
                style:TextButton.styleFrom (
                  elevation: 30,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize:const Size(double.infinity,60),
                  shape:const RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20))),

                ),
                child:const Text('convert',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      )
    );
  }
}

