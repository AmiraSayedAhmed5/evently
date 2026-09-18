import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../tabs/home/tab_item.dart';

class CreateEventScreen extends StatefulWidget {
 static const String routeName='/create-event' ;

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Add Event'),),
    body: Column(children: [
      Padding(
        padding:EdgeInsets.symmetric(horizontal: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/images/Sport.png',height: MediaQuery.sizeOf(context).height*0.22,
          width: double.infinity,
          fit: .fill,),
        ),
      ),
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
      )
    ],),);
  }
}
