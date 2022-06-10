import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:storybook/model/story_model.dart';

mixin ComponentViewPresenter {
  late final StoryModel storyModel;

  Future copyToClipboard(String text, BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: text));

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Copiado!', textAlign: TextAlign.center)),
    );
  }
}
