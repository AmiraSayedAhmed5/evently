import 'package:evently/core/default_text_form_field.dart';
import 'package:evently/core/event_item.dart';
import 'package:flutter/material.dart';
class FavoriteTab extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          DefaultTextFormField(
            hintText: 'Search for event',suffixIconImageName: 'search',
          ),
          SizedBox(height: 16,),
          Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(top: 16,left: 16,right: 16),
            itemBuilder: (_,index)=>EventItem(),itemCount: 10,separatorBuilder: (_,_)=>SizedBox(height: 16,),),),],),
    );
  }
}