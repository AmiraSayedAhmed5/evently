import 'dart:core';

import 'package:flutter/material.dart';

class CategoryModel {
  String id;
  String name;
  IconData icon;
  String imageName;
  CategoryModel({required this .id,
    required this .icon,
    required this .imageName,
    required this .name});
  static List<CategoryModel>categories=[
    CategoryModel(id: 'sport', icon: Icons.sports_basketball_outlined, imageName: 'sport', name: 'Sport'),
    CategoryModel(id: 'birthday', icon: Icons.cake_outlined, imageName: 'birthday', name: 'Birthday'),
  ];
}