import 'package:storybook/model/story_model.dart';

class StoryCategory {
  final String name;
  final List<StoryModel> stories;

  const StoryCategory({required this.name, required this.stories});
}