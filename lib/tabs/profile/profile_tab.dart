import 'package:evently/core/theme/app_theme.dart';
import 'package:evently/models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ProfileTab extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    TextTheme textTheme = Theme
        .of(context)
        .textTheme;
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile Route.png'),
            radius: MediaQuery
                .sizeOf(context)
                .width * 0.15,),
          SizedBox(height: 16,),
          Text('Amira Sayed', style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600),),
          SizedBox(height: 4,),
          Text('amirasayed.route@gmail.com', style: textTheme.titleSmall,),
          SizedBox(height: 32,),
          SwitchListTile(
            title: Text('Dark Mode'),
              value:false,
              onChanged:(value){},
            thumbColor:WidgetStatePropertyAll(AppTheme.white),
            trackColor:WidgetStatePropertyAll(AppTheme.lightgrey),
            trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
          ),
          SizedBox(height: 16,),
          ListTile(title: Text('Language'),trailing:
          DropdownButton(
            value: 'en',
            items:LanguageModel.languages.map((language)=>DropdownMenuItem(value:language.code,child: Text(language.name),),
    )
              .toList(),
              onChanged:((languageCode) {print(languageCode);}),
            underline: SizedBox(),
            dropdownColor: AppTheme.white,
            borderRadius: BorderRadius.circular(16),
          ),
          ),
          SizedBox(height: 16,),
          ListTile(title: Text('Logout'),trailing: SvgPicture.asset('assets/icons/logout.svg',height: 24,width: 24,fit: .scaleDown,),
          onTap: (){},),
        ],
      ),
    );
  }
  }