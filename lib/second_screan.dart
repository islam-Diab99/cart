
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/third_screan.dart';
List selecteditems=[];
int total=0;
class SecondScrean extends StatefulWidget {
  const SecondScrean({Key? key}) : super(key: key);

  @override
  _SecondScreanState createState() => _SecondScreanState();
}

class _SecondScreanState extends State<SecondScrean> {
  List names=['code smell','controlflow','interpreter','recursion','sprint','heisenbug'];
  List<int> prices=[23,432,32,243,23,42,42];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme:IconThemeData( color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text(
          'Catelog',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          color: Colors.black,

        ),
        ),
        actions: [InkWell(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Selected(
            total: total,
          ))),
            child: Icon(Icons.shopping_cart,color: Colors.black,)),SizedBox(width: 20,)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 40),
        child: ListView.builder(
          itemCount: 6,
            itemBuilder: (BuildContext context,int index)
                {
                  return ListTile(

                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,

                    ),
                        title: Text(names[index],),
                      trailing: InkWell(child: selecteditems.contains(names[index])
                          ?Icon(Icons.check,size: 23,)
                          : Text('Add',style: TextStyle(fontSize: 16,height: 2),),
                          onTap: (){
                        if(!selecteditems.contains(names[index]))
                          {
                            setState(() {
                              selecteditems.add(names[index]);
                              total=  total+ prices[index];
                            });

                          }
                       else if(selecteditems.contains(names[index]))
                        {
                          setState(() {
                            selecteditems.remove(names[index]);
                         total= total-prices[index];
                          });

                        }
                          },

                      )
                  );
                }
        ),
      ),
    );
  }
}

