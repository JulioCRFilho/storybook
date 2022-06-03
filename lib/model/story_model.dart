import 'package:flutter/material.dart';

class StoryModel {
  final Widget component;
  final String code, name;
  final Map<String, Type>? properties;

  const StoryModel({
    Key? key,
    required this.component,
    required this.code,
    required this.name,
    this.properties,
  });
}
