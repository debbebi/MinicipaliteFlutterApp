import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minicipalite_app/ui/screens/home/home.dart';
import 'package:minicipalite_app/ui/screens/post/add_post.dart';
import 'package:minicipalite_app/ui/screens/wrapper.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Wrapper());
      case '/addPost':
        return MaterialPageRoute(builder: (_) => AddPost());
      /*  case '/productDetails' :
        return MaterialPageRoute(
            builder: (_)=> ProductDetails()
        ) ;*/
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
