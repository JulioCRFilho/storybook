import 'package:storybook/model/story_model.dart';

mixin ComponentViewPresenter {
  late final StoryModel storyModel;

  List<String>? get propertiesName => storyModel.properties?.keys.toList();
}