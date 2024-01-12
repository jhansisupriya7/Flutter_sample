import 'package:flutter/material.dart';

class MusicPlayerPage extends StatefulWidget {

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPage();
}

class _MusicPlayerPage extends State<MusicPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/loginpage.jpeg'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, 
          body: Stack(
            children: [
              Container( 
                padding: EdgeInsets.only(left: 35, top:130),
                child: Text('Welcome\n Back :)',style: TextStyle(color:Colors.black, fontSize: 33),),

              ),
              Container(
                padding: EdgeInsets.only( 
                  top: MediaQuery.of(context).size.height * 0.5, right:35,
                  left:35),
                child: Column( 
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'email',
                        border:OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    TextField( 
                      decoration: InputDecoration( 
                        fillColor: Colors.grey.shade100,
                        filled:true,
                        hintText: 'passward',
                        border:OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),

                      ),

                    ),
                    SizedBox( 
                      height: 160,
                    ),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Sign In', style: TextStyle( 
                        fontSize: 27, fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar( 
                          radius: 30,
                          backgroundColor: Color.fromARGB(255, 127, 123, 137),
                          child: IconButton( 
                            color: Colors.white,
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward),
                          ),
                        ),
                        ],
                        
                    )
                  ],

                ),
              )
            ],

          )
          ),
    );
  }
}