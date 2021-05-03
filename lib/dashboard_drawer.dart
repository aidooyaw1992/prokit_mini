import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

import 'db_colors.dart';
import 'db_images.dart';
import 'db_strings.dart';

class DashboardDrawer extends StatefulWidget {
  const DashboardDrawer({Key key}) : super(key: key);

  @override
  _DashboardDrawerState createState() => _DashboardDrawerState();
}

class _DashboardDrawerState extends State<DashboardDrawer> {
  var selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    return Drawer(
          elevation: 8,
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, right: 20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                        decoration: BoxDecoration(color: t2_colorPrimary, borderRadius: BorderRadius.only(bottomRight: Radius.circular(24.0), topRight: Radius.circular(24.0))),
                        /*User Profile*/
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(backgroundImage: NetworkImage(t2_profile), radius: 40),
                            SizedBox(width: 16),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(t2_user_name, style: boldTextStyle(color: white, size: 20)),
                                    SizedBox(height: 8),
                                    Text(t2_user_email, style: primaryTextStyle(color: white)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    getDrawerItem(t2_user, t2_lbl_profile, 1),
                    getDrawerItem(t2_chat, t2_lbl_message, 2),
                    getDrawerItem(t2_report, t2_lbl_report, 3),
                    getDrawerItem(t2_settings, t2_lbl_settings, 4),
                    getDrawerItem(t2_logout, t2_lbl_sign_out, 5),
                    SizedBox(height: 30),
                    Divider(color: t2_view_color, height: 1),
                    SizedBox(height: 30),
                    getDrawerItem(t2_share, t2_lbl_share_and_invite, 6),
                    getDrawerItem(t2_help, t2_lbl_help_and_feedback, 7),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        );
  }

  Widget getDrawerItem(String icon, String name, int pos) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = pos;
        });
      },
      child: Container(
        color: selectedItem == pos ? t2_colorPrimaryLight : Colors.white,
        padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(icon, width: 20, height: 20, color: Colors.blueAccent),
            SizedBox(width: 20),
            Text(name, style: primaryTextStyle(color: selectedItem == pos ? t2_colorPrimary : Colors.black, size: 18))
          ],
        ),
      ),
    );
  }
}