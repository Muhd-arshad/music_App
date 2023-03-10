import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';
import 'package:musicplayer_flutter/functions/navigate_functions/navigate_functions.dart';
import 'package:musicplayer_flutter/lists/container_list.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        actions: [
          IconButton(
            onPressed: () {
              navigateToSettings(context);
            },
            icon: const Icon(
              Icons.settings,
              color: secondaryCOlor,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () => navigateToFavourite(context),
                    child: const ContainerList(
                      name: 'Favorite',
                      icon: Icon(
                        Icons.favorite,
                        color: secondaryCOlor,
                      ),
                      color: Colors.purple,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => navigateToPlaylist(context),
                    child: const ContainerList(
                      name: 'Playlist',
                      icon: Icon(
                        Icons.playlist_add_circle,
                        color: secondaryCOlor,
                      ),
                      color: Color.fromRGBO(13, 105, 25, 0.612),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => navigateToRecentlyPlayed(context),
                    child: const ContainerList(
                      name: 'Recently\nplayed',
                      icon: Icon(
                        Icons.timelapse,
                        color: secondaryCOlor,
                      ),
                      color: Color.fromRGBO(219, 156, 39, 0.612),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => navigateToMOstlyPlayed(context),
                    child: const ContainerList(
                      name: 'Mostly played',
                      icon: Icon(
                        Icons.headphones,
                        color: secondaryCOlor,
                      ),
                      color: Color.fromARGB(255, 145, 93, 74),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryCOlor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Search'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'All Songs',
                    style: TextStyle(
                        color: secondaryCOlor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
                                radius: 30,
                              ),
                              title: const Text(
                                'Song 1...',
                                style: TextStyle(color: secondaryCOlor),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: secondaryCOlor,
                                    ),
                                  ),
                                  PopupMenuButton(
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: secondaryCOlor,
                                    ),
                                    itemBuilder: (context) => <PopupMenuEntry>[
                                      PopupMenuItem(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text('Add to Playlist'),
                                        ),
                                      ),
                                      PopupMenuItem(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text('Delete'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: 5),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
