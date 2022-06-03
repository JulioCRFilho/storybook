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
    const StoryCategory(name: 'Texto', stories: [
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
          code: "Icon(Icons.ac_unit);",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit);",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit);",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit);",
          name: 'Icon'),
      StoryModel(
          component: Icon(Icons.ac_unit),
          code: "Icon(Icons.ac_unit);",
          name: 'Icon'),
    ]),
    StoryCategory(name: 'Imagens', stories: [
      StoryModel(
          component: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
          code: 'Image.network();',
          name: 'Image'),
      StoryModel(
          component: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
          code: 'Image.network();',
          name: 'Image'),
      StoryModel(
          component: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
          code: 'Image.network();',
          name: 'Image'),
    ]),
    StoryCategory(name: 'Botões', stories: [
      const StoryModel(
        component: MaterialButton(
          onPressed: null,
          child: Text('Clique'),
        ),
        name: 'Material Button',
        code: """
             MaterialButton(
               onPressed: () {},
               child: Text('Clique'),
             );""",
      ),
      const StoryModel(
        component: MaterialButton(
          onPressed: null,
          shape: Border.fromBorderSide(
            BorderSide(
              color: Colors.red,
            ),
          ),
          child: Text('Clique'),
        ),
        name: 'Material Button',
        code: """
        MaterialButton(
          onPressed: null,
          shape: Border.fromBorderSide(
            BorderSide(
              color: Colors.red,
            ),
          ),
          child: Text('Clique'),
        );""",
      ),
      StoryModel(
        component: MaterialButton(
          onPressed: () {},
          color: Colors.red,
          child: const Text('Clique'),
        ),
        name: 'Material Button',
        code: """
             MaterialButton(
               onPressed: () {},
               color: Colors.red,
               child: Text('Clique'),
             );""",
        properties: {
          'Cor': Color,
          'Cor da borda': Color,
          'Negrito': FontWeight,
        },
      ),
    ]),
  ];
}
