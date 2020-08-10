# Flutter_task1
Here is my mobile app created using the flutter platform in dart language. In this app there is basically an audio-video player. For creating the audio player , its respective package is installed. In this case the package installed is 'audioplayers' . Similarly for the video player the packages installed are 'video_player' and flick_video_player' . 


Steps:-
1) Installation of the above mentioned packages in pubspec.yaml .
    dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^0.1.3 
  
  audioplayers: ^0.15.1
  
  video_player: ^0.10.11+2
  
  flick_video_player: ^0.1.1


2)Creating directories to store the respective audio, video and image. Then copying the the files to the directories.


3) Adding the path of the audio, video and image to the assets in pubspec.yaml.
    assets:
      - images/crop.jpg
      - audio/audioplay.mp3
      - video/joy.mp4
      - assets/
 
 
 4)Proceeding with the program for the creation of the app.The methods in these packages are further used to form the dart code required. Thus helping in creating the app.     
