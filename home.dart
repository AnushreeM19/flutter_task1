import 'package:task_app/video.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

AudioPlayer audioPlayer = new AudioPlayer();
var ap = new AudioCache(fixedPlayer: audioPlayer);

playonline() async {
  ap.clearCache();
  await ap.play('audioplay.mp3');
}

pause() {
  audioPlayer.pause();
}

stop() {
  audioPlayer.stop();
}

var myHome = DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      actions: <Widget>[
        Icon(
          Icons.search,
          size: 30,
        )
      ],
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      ),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.audiotrack, size: 40, color: Colors.white)),
          Tab(icon: Icon(Icons.video_library, size: 40, color: Colors.white)),
        ],
        indicatorColor: Colors.white,
      ),
      title: Text('GiveJoy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          )),
      centerTitle: true,
    ),
    body: TabBarView(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 90),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(150),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 140),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset('images/crop.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 460),
              width: 290,
              height: 65,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: pause,
                    child: Icon(
                      Icons.pause,
                      color: Colors.blue,
                    ),
                  ),
                  FlatButton(
                    onPressed: playonline,
                    child: Icon(Icons.play_circle_filled,
                        size: 61, color: Colors.grey),
                  ),
                  FlatButton(
                    onPressed: stop,
                    child: Icon(Icons.stop, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: new SamplePlayer(),
          ),
        ),
      ],
    ),
  ),
);

home() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myHome,
  );
}
