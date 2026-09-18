import 'package:evently/models/category_model.dart';
import 'package:evently/tabs/home/tab_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget{
  @override
  State<HomeHeader> createState() =>_HomeHeaderState();
  }
  class _HomeHeaderState extends State<HomeHeader>{
  int currentIndex =0;


  @override
  Widget build(BuildContext context) {
    TextTheme textTheme =Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome Back ✨',style: textTheme.titleSmall,),
          SizedBox(height: 4,),
          Text('Amira Sayed',style: textTheme.headlineSmall,),
          DefaultTabController(length: CategoryModel.categories.length+1,
          child:
          TabBar(
            isScrollable: true,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              tabAlignment: .start,
              labelPadding: EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(vertical: 24),
              onTap: (index){
              if (currentIndex ==index) return;
              currentIndex=index;
              setState(() {});
              },
              tabs:[
              TabItem(
                labol:'All',
                icon:Icons.category_outlined,
                isSelected: currentIndex ==0,),
              ...CategoryModel.categories.map(
                (Category) =>TabItem(
            labol: Category.name,
            icon:Category.icon,
            isSelected: currentIndex ==CategoryModel.categories.indexOf(Category)+1,
          ),

    )
    ],
),
          ),

        ],
      ),
    );
  }
}
