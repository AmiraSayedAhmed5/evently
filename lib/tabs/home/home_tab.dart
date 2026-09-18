import 'package:evently/core/event_item.dart';
import 'package:evently/core/theme/app_theme.dart';
import 'package:evently/tabs/home/tab_item.dart';
import 'package:flutter/material.dart';
import 'home_header.dart';
class HomeTab extends StatelessWidget{
  static const String routeName = '/home';
  @override
  Widget build (BuildContext context){
    return Container(
      color: AppTheme.backgroundLight,
      child: Column(
        children: [
          HomeHeader(),Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (_,index)=>EventItem(),itemCount: 10,separatorBuilder: (_,_)=>SizedBox(height: 16,),))
        ],
      ),
    );
      Center(child: Text('Home'),);
  }
}