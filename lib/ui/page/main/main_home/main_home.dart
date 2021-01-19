import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mall/constant/app_strings.dart';
import 'package:mall/utils/refresh_state_util.dart';
import 'package:mall/utils/shared_preferences_util.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  List imgList = [
    "images/home_icon_1.png",
    "images/home_icon_2.png",
    "images/home_icon_3.png",
    "images/home_icon_4.png",
    "images/home_icon_5.png",
    "images/home_icon_6.png",
    "images/home_icon_7.png",
    "images/home_icon_8.png",
    "images/home_icon_9.png",
    "images/home_icon_10.png",
  ];

  @override
  Widget build(BuildContext context) {
    RefreshController _refreshController = RefreshController();
    RefreshStateUtil.getInstance()
        .stopRefreshOrLoadMore(_refreshController);
    SharedPreferencesUtil.getInstance().setBool(AppStrings.IS_FIRST, false);
    return Stack (
      children: [
        StaggeredGridView.countBuilder(
          padding: EdgeInsets.only(top: 80,right: 8,left: 8,bottom: 8),
           crossAxisCount: 4,
            itemCount: imgList.length,
            itemBuilder: (context, i) {
              String imgPath = imgList[i];
              return InkWell(
                  child: Image.asset(imgPath),
                  onTap: () {
                    print("点击了Main_home里面的图片");
                  }
              );
            },
            staggeredTileBuilder: (index) => new StaggeredTile.fit(2),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),

        Positioned(
          top: 0,
          child: Container (
            child: Column (
              children: [
                SizedBox(height: 20,),
                Container (
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      InkWell(
                        onTap: () {
                          print("点击了北京市");
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Text("北京市 "),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ],

    );
  }
}
