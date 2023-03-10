import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';
import 'package:musicplayer_flutter/functions/navigate_functions/navigate_functions.dart';
import 'package:musicplayer_flutter/screen/widget/nowplaying_screen.dart';

class ScreenMostlyPlayed extends StatelessWidget {
  const ScreenMostlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    var songs = ['song3...', 'song1...', 'song2...'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Mostly Played',
          style: TextStyle(color: secondaryCOlor),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryCOlor,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Songs',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: secondaryCOlor),
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () => navigateToPlyingScreen(context),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/music-note.png'),
                      ),
                      title: Text(
                        songs[index],
                        style: const TextStyle(color: secondaryCOlor),
                      ),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz,color: secondaryCOlor,),),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: songs.length),
            )
          ],
        ),
      ),
    );
  }
}
