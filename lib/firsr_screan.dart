

import 'package:flutter/material.dart';
import 'package:practise/second_screan.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: AppBar(



          iconTheme:IconThemeData( color: Colors.teal),

          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'dash',
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty)
                      {
                        return 'Enter user name';
                      }
                    if(!value.contains('@gmail.com')&&!value.contains('@yahoo.com'))
                      {
                        return '(@gmail.com) or(@yahoo.com) ';
                      }
                    return null;

                  }

                ),
                SizedBox(height: 20,),
                TextFormField(

                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    validator: (value){
                      if(value.toString().length<6)
                        {
                          return 'must be larger than 6 elements';
                        }

                      if(value==null||value.isEmpty)
                        {
                          return 'Enter password';
                        }
                      return null;

                    }


                ),
                MaterialButton(onPressed: (){
                  if(_formkey.currentState!.validate())
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScrean()));
                    }

                },
                  child: Text(
                    'Enter'
                  ),
                  color: Colors.yellow,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
