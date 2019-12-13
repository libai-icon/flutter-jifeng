import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jifeng/common/text_util.dart';
class ImageUtil{
  static ImageProvider getAssetImage(String name,{String format:'png'}){
    return AssetImage(getImagePath(name,format: format));
  }
  static String getImagePath(String name,{String format:'png' }){
    return 'assets/images/$name.$format';
  }

  static ImageProvider getImageProvider(String imageUrl,{String holderImg:"none"}){
    if(TextUtil.isEmpty(imageUrl)||!imageUrl.contains("http")){
      return AssetImage(getImagePath(holderImg));
    }
    return CachedNetworkImageProvider(imageUrl);
  }
}