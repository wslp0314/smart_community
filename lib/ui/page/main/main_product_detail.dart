import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mall/constant/app_colors.dart';
import 'package:mall/constant/app_dimens.dart';
import 'package:mall/constant/app_images.dart';
import 'package:mall/constant/text_style.dart';
import 'package:mall/ui/widgets/cached_image.dart';

class MainProductDetail extends StatefulWidget {
  @override
  _MainProductDetilState createState() => _MainProductDetilState();
}

class _MainProductDetilState extends State<MainProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xffF6F6F6),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Column (
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(""),
                    ),

                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("¥"),
                              Text("",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xFFFF2828)),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xFF101010)),),
                              Text("",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xFF888484)),),
                              Text("销量${null}",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xFF888484)),),
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                )


              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left),
          ),
        ),
      ],
    );
  }
}

