import 'package:flutter/material.dart';

Widget showBanners({required PageController controller,required List<String> images}){
  return SizedBox(
      height: 150,
      width: double.infinity,
      child: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context,index)
        {
          return Image.asset(images[index],fit: BoxFit.fill,width: double.infinity,height: double.infinity,);
        },
        physics: const BouncingScrollPhysics(),
        controller: controller,
      )
  );
}