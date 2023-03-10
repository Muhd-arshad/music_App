import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'About',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height *.7,
              width: MediaQuery.of(context).size.width *.8,
              color: secondaryCOlor,
              child: Column(
                children: [
                  // Container(
                  //   height: 100,
                  //   width: 200,
                  //   decoration: BoxDecoration(
                      
                  //     image:DecorationImage(image:  AssetImage('assets/images/music-note.png'),)
                  //   ),
                    
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.5,
                  ),
                  Text('Version :1.1.0.0'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Developed by Arshad')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
