import 'package:flutter/material.dart';
import 'package:components/src/pages/listview_page.dart';
import 'package:components/src/pages/slider_page.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
    'animatedContainer': (BuildContext context) =>
        const AnimatedContainerPage(),
    'inputs': (BuildContext context) => const InputPage(),
    'slider': (BuildContext context) => const SliderPage(),
    'list': (BuildContext context) => const ListPage()
  };
}
