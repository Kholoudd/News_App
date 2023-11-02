import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquary = MediaQuery.of(context).size;
    return Container(
      width: mediaquary.width / 1.5,
      height: mediaquary.height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 80),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(color: theme.primaryColor),
            child: Text(
              "News App!",
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 25),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Categories",
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 25),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Settings",
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
