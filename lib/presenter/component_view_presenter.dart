import 'package:flutter/services.dart';
import 'package:storybook/model/story_model.dart';

mixin ComponentViewPresenter {
  late final StoryModel storyModel;

  Future copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    print('copiado');
  }
}
