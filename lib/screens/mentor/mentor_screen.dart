import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/size_config.dart';

class MentorScreen extends StatefulWidget {
  static String routeName = "/mentor";

  const MentorScreen({Key? key}) : super(key: key);

  @override
  _MentorScreenState createState() => _MentorScreenState();
}

class _MentorScreenState extends State<MentorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContents(context),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.mentor),
    );
    ;
  }
}

Widget _buildContents(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(40)),
        HomeHeader(),
        Container(
          // height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(getProportionateScreenWidth(20)),
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(15),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF800080),
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              Center(
                child: Text(
                  "Mentors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ),
      ],
    ),
  );
}