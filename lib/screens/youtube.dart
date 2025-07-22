import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:youtube/routes/app_routes.dart';
import 'package:youtube/screens/login_screen.dart';
import 'package:youtube/screens/notifications.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/youtube_play_video.dart';

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  int _selectedIndex = 0;

  int get selectedindex {
    return _selectedIndex;
  }

  set selectedindex(int value) {
    _selectedIndex = value;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        // Navigator.pushNamed(context, "shorts");
        Get.toNamed(AppRoutes.shorts);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final Width = size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 52, 50, 50),
      appBar: AppBar(
        leading: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
        ),
        title: Text(
          "Youtube",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, AppRoutes.notifications);
                  Get.toNamed(AppRoutes.notifications);
                },

                child: Icon(Icons.notifications, size: 30, color: Colors.white),
              ),
              SizedBox(width: 10),
              Icon(Icons.search, size: 30, color: Colors.white),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.youtubePlayVideo);
                Get.toNamed(AppRoutes.youtubePlayVideo);
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                height: height * 0.3,
                width: double.infinity,

                child: Image.network(
                  "https://images5.alphacoders.com/468/468447.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: height * 0.06,
                  width: Width * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://static.vecteezy.com/system/resources/thumbnails/022/024/539/small_2x/tom-and-jerry-cartoon-free-vector.jpg",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tom and Jerry",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "tom and jerry play cartoon #child",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  //width: 80,
                  child: Image.network(
                    "https://img.pikbest.com/origin/09/21/29/70epIkbEsTFJf.png!sw800",
                  ),
                ),
                Text(
                  "Shorts ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 180)),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://w0.peakpx.com/wallpaper/660/259/HD-wallpaper-tom-and-jerry-cartoons-thumbnail.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.pinimg.com/474x/9f/a1/ba/9fa1ba3e7dd1298712e3958ac8c3a671.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.justwatch.com/poster/323283688/s718/ninja-hattori.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade300),
              height: 250,
              width: double.infinity,

              child: Image.network(
                "https://i.pinimg.com/736x/14/27/58/1427586be74ac26b3a4979a7fd1ab52a.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.dribbble.com/userupload/29466076/file/original-ba33901121ed678c59f90d9a6fca0438.gif",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Doraemon and its Friends",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Doraemon his storys",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
