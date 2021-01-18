import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mall/constant/app_colors.dart';
import 'package:mall/constant/app_dimens.dart';
import 'package:mall/constant/app_strings.dart';
import 'package:mall/event/tab_select_event.dart';
import 'package:mall/ui/page/home/tab_cart_page.dart';
import 'package:mall/ui/page/home/tab_category_page.dart';
import 'package:mall/ui/page/home/tab_mine_page.dart';
import 'package:mall/ui/page/home/tabhome/tab_home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mall/ui/page/main/main_home/main_home.dart';
import 'package:mall/utils/shared_preferences_util.dart';
import 'package:mall/utils/navigator_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _list = List();
  var imgUrl;


  List _tabTitle = [
  "首页",
  "商城",
  "名企",
  "我的",
  ];

  Image getTabImage(path) {
    return Image.asset(
      path,
      width: 20.0,
      height: 20.0,
    );
  }

// 初始化tab 图片
  List tabMap;

  @override
  void initState() {
    super.initState();
    tabMap = [
      {
        "title":"首页",
        "normalImgUrls": "images/main_home.png",
        "selectedImgUrls":"images/main_home_s.png",
        "normalImgUrls": "images/main_home.png",
      },
      {
        "title":"商城",
        "normalImgUrls": "images/mian_company.png",
        "selectedImgUrls":"images/mian_company_s.png",
        "normalImgUrls": "images/mian_company.png",
      },
      {
        "title":"名企",
        "normalImgUrls": "images/main_companyList.png",
        "selectedImgUrls":"images/main_companyList_s.png",
        "normalImgUrls": "images/main_companyList.png",
      },
      {
        "title":"我的",
        "normalImgUrls": "images/main_my.png",
        "selectedImgUrls":"images/main_my_s.png",
        "normalImgUrls": "images/main_my.png",
      },
    ];
    SharedPreferencesUtil.getInstance().setBool(AppStrings.IS_FIRST, false);
    tabSelectBus.on<TabSelectEvent>().listen((event) {
      setState(() {
        TabSelectEvent tabSelectEvent = event;
        _selectedIndex = tabSelectEvent.selectIndex;
      });
    });
    // _list
    //   ..add(TabHomePage())
    //   ..add(TabCategoryPage())
    //   ..add(TabCartPage())
    //   ..add(TabMinePage());

    _list
      ..add(MainHome())
      ..add(TabCategoryPage())
      ..add(TabCartPage())
      ..add(TabMinePage());
  }

  void _onItemTapped(int index) {
    if (index == 2 || index == 3) {
      //确定是否登录状态
      SharedPreferencesUtil.getInstance()
          .getString(AppStrings.TOKEN)
          .then((value) {
        if (value == null) {
          NavigatorUtil.goLogin(context);
          return;
        }
        _changeIndex(index);
      });
    } else {
      //防止点击当前BottomNavigationBarItem rebuild
      _changeIndex(index);
    }
  }

  _changeIndex(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _list,
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(height: 49, width: MediaQuery.of(context).size.width / 4, child: bottomAppBarItem(0)),
            SizedBox(height: 49, width: MediaQuery.of(context).size.width / 4, child: bottomAppBarItem(1)),
            SizedBox(height: 49, width: MediaQuery.of(context).size.width / 4, child: bottomAppBarItem(2)),
            SizedBox(height: 49, width: MediaQuery.of(context).size.width / 4, child: bottomAppBarItem(3))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        shape: CircularNotchedRectangle(),
      ),


    );
  }
  Widget bottomAppBarItem(int index) {
    //设置默认未选中的状态
    TextStyle style =
    TextStyle(fontFamily: 'PingFang SC', fontWeight: FontWeight.w600, fontSize: ScreenUtil().setSp(29), color: Colors.grey);
    var tabItem = tabMap[index];
    imgUrl = tabItem['normalImgUrls'];
    // 当前的item
    if (_selectedIndex == index ) {
      style = TextStyle(fontFamily: 'PingFang SC', fontWeight: FontWeight.w600, fontSize: ScreenUtil().setSp(29), color: Color(0xFFFF841D));
      // 选中的话
      imgUrl = tabItem['selectedImgUrls'];
    }
    // 展示未读总数量
    //构造返回的Widget
    Widget item = Container(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 50,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5,),
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset(imgUrl),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      tabItem['title'],
                      softWrap: false,
                      style: style,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        onTap: () => _switchPage(index, context),
      )
    );
    return item;
  }

  void _switchPage(index, context) async {
    // 去往消息页面和我的页面判断用户是否登录 "result" 为true时，不需要重新登录
    if (index == 2 || index == 3) {
      // // var result = await getUserToken();
      // if (!result) {
      //   return getLoginPage(context); // 跳转登录页
      // }
    }

    setState(() {
      _changeIndex(index);
    });
  }


}
