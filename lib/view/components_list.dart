import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storybook/model/story_category.dart';
import 'package:storybook/model/story_model.dart';
import 'package:storybook/view/component_view.dart';

class ComponentsList extends StatelessWidget {
  final List<StoryCategory> categories;

  const ComponentsList({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    categories.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Storybook'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: categories
              .map(
                (e) => Column(
                  children: [
                    Text(e.name),
                    ...e.stories
                        .map(
                          (e) => Text(e.name),
                        )
                        .toList(),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  navigation(BuildContext context, StoryModel story) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ComponentView(story: story),
      ),
    );
  }
}
