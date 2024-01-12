import 'package:flutter/material.dart';
import 'package:flutter_application_1/Music_player_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage( image: AssetImage(
                    'assets/music_player.jpeg.jpeg',
                ),
            ),
               shape: BoxShape.circle,
             ),
          ),    
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => MusicPlayerPage()));
      },
      child: Text('login'),),
    );
  }
}