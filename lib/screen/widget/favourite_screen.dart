import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';
import 'package:musicplayer_flutter/functions/navigate_functions/navigate_functions.dart';

class ScreenFavourite extends StatelessWidget {
  const ScreenFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Favourites',
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: secondaryCOlor, size: 30),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Songs',
                  style: TextStyle(
                      color: secondaryCOlor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () => navigateToPlyingScreen(context),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/music-note.png'),
                      ),
                      title: const Text(
                        'Songs...',
                        style: TextStyle(color: secondaryCOlor),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }
}
