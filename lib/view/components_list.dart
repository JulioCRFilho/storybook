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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.grey[400],
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        e.name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ...e.stories.map((e) => titleButton(e, context)).toList(),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget titleButton(StoryModel e, BuildContext context) {
    return InkWell(
      onTap: () => navigation(context, e),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e.name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      e.properties?.keys.join(', ') ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
              width: 80,
              child: Center(child: e.component),
            ),
          ],
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
