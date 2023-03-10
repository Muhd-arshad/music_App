import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';
import 'package:musicplayer_flutter/functions/navigate_functions/navigate_functions.dart';

class ScreenRecentlyPlayed extends StatelessWidget {
 const ScreenRecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
     var song = [
    'Song2..',
    'Song1..',
    'Song3..',
  ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Recenely Played',
          style: TextStyle(color: secondaryCOlor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryCOlor,
          ),
        ),
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:const [
                   Text(
                    'Songs ',
                    style: TextStyle(color: secondaryCOlor, fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
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
                        
                        song[index],style: const TextStyle(color: secondaryCOlor),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz,color: secondaryCOlor,),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: song.length),
            )
          ],
        ),
      ),
    );
  }

 
}
