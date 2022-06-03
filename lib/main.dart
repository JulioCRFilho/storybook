import 'package:flutter/material.dart';
import 'package:storybook/model/story_category.dart';
import 'package:storybook/model/story_model.dart';
import 'package:storybook/view/components_list.dart';

void main() {
  final List<StoryCategory> categories = getStories();

  runApp(
    MaterialApp(
      home: ComponentsList(categories: categories),
    ),
  );
}

List<StoryCategory> getStories() {
  return [
    const StoryCategory(name: 'Botões', stories: [
      StoryModel(
          component: Text('texto'), code: "Text('texto');", name: 'Text'),
      StoryModel(
          component: Text('texto'), code: "Text('texto');", name: 'Text'),
      StoryModel(
          component: Text('texto'), code: "Text('texto');", name: 'Text'),
      StoryModel(
          component: Text('texto'), code: "Text('texto');", name: 'Text'),
      StoryModel(
          component: Text('texto'), code: "Text('texto');", name: 'Text'),
      StoryModel(
          component: Text('texto'), code: "Text('texto');", name: 'Text'),
    ]),
    const StoryCategory(name: 'Icones', stories: [
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit)",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit)",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit)",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit)",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit)",
          name: 'Icon'),
    ]),
  ];
}
