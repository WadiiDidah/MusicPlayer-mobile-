import 'package:flutter/material.dart';
import 'musicPlayer.dart';
import 'bottom_bar.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "dkj",
        home: Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text(
                "Sound Vibe",
              ),
              elevation: 10,
              backgroundColor: Colors.redAccent,
            ),
            body: Listener(
                onPointerMove: (moveEvent) {
                  if (moveEvent.delta.dx > 0)
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MusicApp()));
                },
                child: Container(
                  decoration: new BoxDecoration(color: Colors.white10),
                  child: Center(
                    child: IconButton(
                      iconSize: 90.0,
                      color: Colors.redAccent,
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic_rounded,
                      ),
                    ),
                  ),
                )),
            bottomNavigationBar: BottomBar(),
        )
    );
  }
}
