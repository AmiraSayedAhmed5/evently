import 'package:evently/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme =Theme.of(context).textTheme;
    Color primaryColor=Theme.of(context).primaryColor;
    return Stack(
      children: [ClipRRect(
        borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/images/Sport.png',height: screenSize.height*0.23,width: double.infinity,fit: .fill,)),
        Container(
            margin: EdgeInsets.all(8),
          decoration: BoxDecoration(color: AppTheme.backgroundLight,border: Border.all(color: AppTheme.offwhite),borderRadius:BorderRadius.circular(8)),
            child: Text('21 jun',style: textTheme.titleMedium?.copyWith(color:primaryColor))),
    Positioned(
      bottom: 8,
      right: 0,
      left: 0,
      child: Container(
        padding: EdgeInsets.all(8),
          decoration: BoxDecoration(color: AppTheme.backgroundLight,border: Border.all(color: AppTheme.offwhite),borderRadius:BorderRadius.circular(8)),
        width: double.infinity,
          child: Row(
        mainAxisAlignment:.spaceBetween,
        children: [
          Expanded(child: Text('Meeting for Updating The Development Method ',maxLines: 2,overflow: .ellipsis,)),

          SizedBox(width: 8,),
          InkWell(onTap:(){},child: Icon(Icons.favorite_outlined,color: primaryColor,)),
        ],
      )),
    )

      ],
    );
  }
}
