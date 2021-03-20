import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphism_ui/helpers/nm_box.dart';

class Share extends StatelessWidget {
  const Share({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.07,
      minChildSize: 0.07,
      maxChildSize: 0.4,
      builder: (BuildContext context, scroll) {
        return Container(
          decoration: nMbox,
          child: ListView(
            controller: scroll,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(Icons.share, color: fCL),
                    ),
                    Text(
                      'Share',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Share on',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 35),
                    Container(
                      width: 225,
                      padding: EdgeInsets.all(10),
                      decoration: nMboxInvert,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.facebookF, color: fCL),
                          Icon(FontAwesomeIcons.twitter, color: fCL),
                          Icon(FontAwesomeIcons.instagram, color: fCL),
                          Icon(FontAwesomeIcons.linkedin, color: fCL),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    FaIcon(
                      FontAwesomeIcons.copy,
                      color: Colors.pink.shade800,
                    ),
                    Text(
                      'Copy link',
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
