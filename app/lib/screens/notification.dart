import 'package:flutter/material.dart';

import '../themedata/theme.dart';
import 'home.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
         backgroundColor: Colors.blue,
            title: Text("Thông báo",style: headingStyle,),
      ),
      body: Container(
        
      ),
    );
  }
}
