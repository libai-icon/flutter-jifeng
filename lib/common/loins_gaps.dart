//间隔
import 'package:flutter/material.dart';

import 'loins_color.dart';

class LoinsGaps {
  //水平间隔
    static const Widget hGap2 = const SizedBox(width: 2.0);

  static const Widget hGap4 = const SizedBox(width: 4.0);
  static const Widget hGap5 = const SizedBox(width: 5.0);
  static const Widget hGap8 = const SizedBox(width: 8.0);
  static const Widget hGap10 = const SizedBox(width: 10.0);
    static const Widget hGap12 = const SizedBox(width: 12.0);

  static const Widget hGap16 = const SizedBox(width: 16.0);
  static const Widget hGap32 = const SizedBox(width: 32.0);

  //垂直间隔
  static const Widget vGap2 = const SizedBox(height: 2.0);
  static const Widget vGap4 = const SizedBox(height: 4.0);

  static const Widget vGap8 = const SizedBox(height: 8.0);
  static const Widget vGap10 = const SizedBox(height: 10);
  static const Widget vGap12 = const SizedBox(height: 12);

  static const Widget vGap15 = const SizedBox(height: 15);
  static const Widget vGap16 = const SizedBox(height: 16);
  static const Widget vGap32 = const SizedBox(height: 32);
  static const Widget vGap40 = const SizedBox(height: 40);

  static const Widget vGap50 = const SizedBox(height: 50);

  static const empty = const SizedBox();

  static Widget line = const SizedBox(
      height: 0.6,
      width: double.infinity,
      child:
          const DecoratedBox(decoration: BoxDecoration(color: LoinsColor.line)));
}
