import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';

class Screenplaylist extends StatelessWidget {
  const Screenplaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryCOlor,
          ),
        ),
        title: const Text(
          'Playlists',
          style: TextStyle(color: secondaryCOlor),
        ),
        centerTitle: true,
      ),
      backgroundColor: bgColor,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: bgColor,
                  ),
                  label: const Text(
                    'Add New Playlist',
                    style: TextStyle(color: bgColor),
                  ),
                )),
          ),
        ],
      )),
    );
  }
}
