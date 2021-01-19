import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mall/constant/app_colors.dart';
import 'package:mall/constant/app_dimens.dart';
import 'package:mall/constant/app_images.dart';
import 'package:mall/constant/text_style.dart';
import 'package:mall/ui/widgets/cached_image.dart';

class MainShop extends StatefulWidget {
  @override
  _MainShopState createState() => _MainShopState();
}

class _MainShopState extends State<MainShop> {

  var _bannerData = [
    "",
    "",
    "",
  ];

  ///轮播图
Widget getSwiper () {
  Container(
    decoration: new BoxDecoration(
      //背景
      color: Colors.white,
      //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      //设置四周边框
      // border: new Border.all(width: 1, color: Colors.red),
    ),
    alignment: Alignment.center,
    color: AppColors.COLOR_F0F0F0,
    height: ScreenUtil().setHeight(AppDimens.DIMENS_480),
    width: double.infinity,
    child: _bannerData == null || _bannerData.length == 0
        ? Image.asset(
      AppImages.DEFAULT_PICTURE,
    )
        : Swiper(
      onTap: (index) {
        print("点击了轮播图");
      },
      itemCount: _bannerData.length,
      scrollDirection: Axis.horizontal,
      //滚动方向，设置为Axis.vertical如果需要垂直滚动
      loop: true,
      //无限轮播模式开关
      index: 0,
      //初始的时候下标位置
      autoplay: false,
      itemBuilder: (BuildContext buildContext, int index) {
        print(_bannerData[index]);
        return CachedImageView(
            double.infinity, double.infinity, _bannerData[index]);
      },
      duration: 5000,
      pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              size: ScreenUtil().setWidth(AppDimens.DIMENS_18),
              activeSize: ScreenUtil().setWidth(AppDimens.DIMENS_18),
              color: Colors.white,
              activeColor: AppColors.COLOR_FF5722)),
    ),
  );
}


  ///分类
  var categoryList = [
    {"title":"农贸产品","imageUrl":"images/category_item_1.png"},
    {"title":"家具电器","imageUrl":"images/category_item_2.png"},
    {"title":"母婴零食","imageUrl":"images/category_item_3.png"},
    {"title":"酒水饮品","imageUrl":"images/category_item_4.png"},
    {"title":"电子数码","imageUrl":"images/category_item_5.png"},
    {"title":"教学办公","imageUrl":"images/category_item_6.png"},
    {"title":"休闲零食","imageUrl":"images/category_item_7.png"},
    {"title":"时装配饰","imageUrl":"images/category_item_8.png"},
    {"title":"烘焙用品","imageUrl":"images/category_item_9.png"},
    {"title":"进口产品","imageUrl":"images/category_item_10.png"},
    {"title":"所有分类","imageUrl":"images/category_item_11.png"},
    {"title":"汽车配件","imageUrl":"images/category_item_12.png"},
  ];


Widget getCategoryPart () {
  return Container(
      padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(AppDimens.DIMENS_30),
          bottom: ScreenUtil().setHeight(AppDimens.DIMENS_30)),
      color: AppColors.COLOR_FFFFFF,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        //禁止滚动
        shrinkWrap: false,
        //Vertical viewport was given unbounded height.  Column 中且套GridView、ListView的问题
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          //  return _getGridViewItem(categoryList[index]);
          return getCategoryItem(context, categoryList[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.9,
          //单个子Widget的水平最大宽度
          crossAxisCount: 5,
          //水平单个子Widget之间间距
          mainAxisSpacing: ScreenUtil().setWidth(AppDimens.DIMENS_30),
          //垂直单个子Widget之间间距
          crossAxisSpacing: ScreenUtil().setWidth(AppDimens.DIMENS_30),
        ),
      )
  );
}


Widget getCategoryItem (context,Map map) {
  return Center(
    child: InkWell(
      onTap: () {
        print("跳转分类页面");
      },
      child: Column(
        children: <Widget>[
          CachedImageView(ScreenUtil().setWidth(AppDimens.DIMENS_120),
              ScreenUtil().setWidth(AppDimens.DIMENS_120), map["imageUrl"]),
          Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil().setWidth(AppDimens.DIMENS_10)),
          ),
          Text(
            map["title"],
            style: FMTextStyle.color_333333_size_42,
          )
        ],
      ),
    ),
  );
}

///特色商品   优惠活动
Widget getBlock1 () {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        ///特色商品
        Text("特色商品",style: TextStyle(color: Colors.black, fontSize: 36.sp,fontWeight: FontWeight.w600),),
        Row(
          children: [
            InkWell(
              onTap: (){
                print("点击了特色商品1");
              },
              child: Container(
                child: Image.asset("images/feature_product_1.png"),
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: (){
                    print("点击了特色商品2");
                  },
                  child: Container(
                    child: Image.asset("images/feature_product_2.png"),
                  ),
                ),
                InkWell(
                  onTap: (){
                    print("点击了特色商品3");
                  },
                  child: Container(
                    child: Image.asset("images/feature_product_3.png"),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        ///优惠活动
        Text("优惠活动",style: TextStyle(color: Colors.black, fontSize: 36.sp,fontWeight: FontWeight.w600),),
        Column(
          children: [
            InkWell(
              onTap: (){
                print("点击了优惠活动1");
              },
              child: Container(
                child: Image.asset("images/discount_1.png"),
              ),
            ),
            InkWell(
              onTap: (){
                print("点击了优惠活动2");
              },
              child: Container(
                child: Image.asset("images/discount_2.png"),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


  ///每日新上
  List newProductList = [

  ];
  Widget getEveryDayNewProduct (){
    return Container (
      color: Color(0xFFF1F1F1),
      child: Column(
        children: [
          Text("查看更多 >>",style: TextStyle(color: Color(0xFF333333)),),
          Row(
            children: [
              getEveryDayNewProductItem(newProductList[1]),
              getEveryDayNewProductItem(newProductList[2]),
              getEveryDayNewProductItem(newProductList[3]),
            ],
          ),
        ],
      ),
    );
  }

  Widget getEveryDayNewProductItem (Map map) {
    return Container(
      child: InkWell(
        onTap: () {
          print("跳转分类页面");
        },
        child: Column(
          children: <Widget>[
            CachedImageView(ScreenUtil().setWidth((MediaQuery.of(context).size.width-100)/3),
                ScreenUtil().setWidth((MediaQuery.of(context).size.width-100)/3), map["imageUrl"]),
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenUtil().setWidth(AppDimens.DIMENS_10)),
            ),
            Text(
              map["title"],
              style: FMTextStyle.color_333333_size_26,
            )
          ],
        ),
      ),
    );
  }

  ///热销商品
List goodsList;
  //火爆商品list
  Widget _goodsList(context) {
    return Wrap(
      children: goodsList.map((itemMap) {
        return InkWell(
          onTap: () {
            print("点击热销商品");
          },
          child: Container(
            width: ScreenUtil().setWidth(375),
            color: Colors.white,
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(bottom: 3),
            child: Column(
              children: <Widget>[
                CachedImageView(ScreenUtil().setWidth((MediaQuery.of(context).size.width-100)/3),
                    ScreenUtil().setWidth((MediaQuery.of(context).size.width-100)/3), itemMap["imageUrl"]),
                Text(
                  itemMap['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: ScreenUtil().setSp(26)),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [

          ],
        ),
        Positioned(
            child: Container (
              child: Row(
                children: [

                ],
              ),
            )

        )
      ],
    );
  }

}
