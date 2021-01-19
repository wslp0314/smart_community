import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mall/constant/app_colors.dart';
import 'package:mall/constant/app_dimens.dart';
import 'package:mall/ui/widgets/goods_widget.dart';
import 'package:mall/ui/widgets/view_model_state_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainLimitPrice extends StatefulWidget {
  @override
  _MainLimitPriceState createState() => _MainLimitPriceState();
}

class _MainLimitPriceState extends State<MainLimitPrice> {
  RefreshController _refreshController = RefreshController();
  var infoList ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9F9),
          title: Text("限时特价"),
          actions: [
            Icon(Icons.shopping_cart),
          ],
          centerTitle: true,
        ),
        body:Container(
          margin: EdgeInsets.only(
            left: ScreenUtil().setWidth(AppDimens.DIMENS_30),
            right: ScreenUtil().setWidth(AppDimens.DIMENS_30),
          ),
          child: _contentView(),
          ),
    );
  }


  Widget _contentView() {
    return Container(
        child: SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          onRefresh: () => _onRefresh(),
          onLoading: () => _onLoadMore(),
          header: WaterDropMaterialHeader(
            backgroundColor: AppColors.COLOR_FF5722,
          ),
          controller: _refreshController,
          child: StaggeredGridView.countBuilder(
            padding: EdgeInsets.only(top: 80,right: 8,left: 8,bottom: 8),
            crossAxisCount: 4,
            itemCount: infoList.length,
            itemBuilder: (context, i) {
              String imgPath = infoList[i];
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
        ));
  }

  void _onRefresh() {
    // _pageIndex = 1;
    // _categoryGoodsViewModel.queryCategoryGoods(
    //     _categoryId, _pageIndex, _pageSize);
  }

  void _onLoadMore() {
    // _categoryGoodsViewModel.queryCategoryGoods(
    //     _categoryId, _pageIndex, _pageSize);
  }


}

