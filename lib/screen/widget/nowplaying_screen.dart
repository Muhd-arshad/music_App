import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';

class ScreenPlaying extends StatelessWidget {
  const ScreenPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryCOlor,
          ),
        ),
        backgroundColor: bgColor,
        title: const Text(
          'Now playing',
          style: TextStyle(color: secondaryCOlor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/music-note.png'),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Song 1..',
                style: TextStyle(
                    color: secondaryCOlor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Artist name',
                style: TextStyle(color: secondaryCOlor, fontSize: 15),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle,
                      color: secondaryCOlor,
                      size: 30,
                    ),
                  ),
                   SizedBox(
                    width: MediaQuery.of(context).size.width *.5,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: secondaryCOlor,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat,
                      color: secondaryCOlor,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '00.0',
                    style: TextStyle(color: secondaryCOlor),
                  ),
                  Slider(
                    value: 0.0,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '00.00',
                    style: TextStyle(color: secondaryCOlor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 40.0,
                      color: secondaryCOlor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pause,
                      size: 40.0,
                      color: secondaryCOlor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next,
                      size: 40.0,
                      color: secondaryCOlor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
