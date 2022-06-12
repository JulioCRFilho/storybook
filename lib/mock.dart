import 'package:storybook/widgets/stories/border_button.dart';

import 'model/story_category.dart';

List<StoryCategory> getCategories() {
  return [
    StoryCategory(
      name: 'Botões',
      stories: [
        BorderButton(name: 'Material button'),
        BorderButton(name: 'Material button'),
        BorderButton(name: 'Material button'),
      ],
    ),
  ];
}
