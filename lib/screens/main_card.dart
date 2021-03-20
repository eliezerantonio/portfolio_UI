import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphism_ui/helpers/nm_box.dart';
import 'package:neumorphism_ui/widgets/share.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mCL,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NMButton(
                      icon: Icons.arrow_back,
                    ),
                    NMButton(
                      icon: Icons.menu,
                    ),
                  ],
                ),
                AvatarImage(),
                SizedBox(height: 15),
                Text(
                  "Eliezer António",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Lubango",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                Text(
                  "Mobile & Back-End Developer Jr. at Evoluyr Tech",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NMButton(
                      icon: Zocial.linkedin,
                    ),
                    SizedBox(width: 15),
                    NMButton(
                      icon: Zocial.github,
                    ),
                    SizedBox(width: 15),
                    NMButton(
                      icon: Zocial.twitter,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    SocialBox(
                        icon: FontAwesomeIcons.dribbble,
                        count: '10',
                        category: 'shots'),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: Icons.people, count: '25', category: 'followers'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    SocialBox(
                        icon: FontAwesomeIcons.heart,
                        count: '19',
                        category: 'likes'),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.user,
                        count: '39',
                        category: 'following'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    SocialBox(
                        icon: FontAwesomeIcons.bitbucket,
                        count: '2',
                        category: 'buckets'),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.folderOpen,
                        count: '3',
                        category: 'projects'),
                  ],
                ),
                SizedBox(height: 35),
              ],
            ),
            Share()
          ],
        ),
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Colors.pink.shade800, size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/avatar.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  NMButton({Key key, this.icon})
      : super(
          key: key,
        );

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}
