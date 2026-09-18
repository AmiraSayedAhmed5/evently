import 'package:evently/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
   String labol;
   IconData icon;
  bool isSelected;
  TabItem({required this.labol,required this.icon,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    Color primaryColor=Theme.of(context).primaryColor;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelected ? primaryColor : AppTheme.white,
        border: Border.all(color: AppTheme.offwhite),
      ),
      child: Row(
        children: [
          Icon(icon,color: isSelected ? AppTheme.white:primaryColor,),
          SizedBox(width: 8,),
          Text(labol,
            style:Theme.of(context).textTheme.titleMedium?.copyWith(
              color:isSelected ? AppTheme.white : AppTheme.black),),
        ],
      ),
    );
  }
}
