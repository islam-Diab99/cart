
import 'package:flutter/material.dart';
import 'package:practise/second_screan.dart';

class Selected extends StatefulWidget {

  const Selected({Key? key, required this.total}) :super(key: key);
  final int total;


  @override
  _SelectedState createState() => _SelectedState();
}

class _SelectedState extends State<Selected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme:IconThemeData( color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Cart',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40
        ),),

      ),
      body:
          Stack(
            alignment: AlignmentDirectional.center,
            children: [

              Container(
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: ListView.builder(
                      itemCount: selecteditems.length,
                      itemBuilder:
                          (BuildContext context,int index)
                      {
                        return Text("-${selecteditems[index]}",style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.bold,
                        ),);
                      }

                  ),
                ),

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    height: 30,color: Colors.black,
                    thickness: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('$total\$',style: TextStyle(
                            fontSize: 70
                        ),
                        ),
                        TextButton(onPressed: (){},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white
                            ),
                            child:Text('Buy',style: TextStyle(
                              color: Colors.black
                            ),) ),

                      ],
                    ),
                  ),

                ],

              ),



            ],
          ),

    );
  }
}
